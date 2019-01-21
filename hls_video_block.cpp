#include "hls_video.h"
#include "hls_math.h"
#include <ap_fixed.h>

#define FILTER_OFFS 1
#define FILTER_SIZE 3
#define width 1280
#define height 720

typedef hls::stream<ap_axiu<24,1,1,1> > AXI_STREAM;
typedef hls::Mat<height, width, HLS_8UC3> RGB_IMAGE;
typedef hls::Mat<height, width, HLS_8UC1> G_IMAGE;
typedef hls::Scalar<3, unsigned char> RGB_PIXEL;
typedef hls::Scalar<1, unsigned char> G_PIXEL;
typedef hls::Window<FILTER_SIZE, FILTER_SIZE, G_PIXEL> G_WINDOW;


void hls_2DFilter(G_IMAGE&, G_IMAGE&);
G_PIXEL sobel_operator(G_WINDOW&);

void hls_2DFilter(G_IMAGE& input_mat, G_IMAGE& output_mat) {
	G_WINDOW IN_WINDOW;
	G_PIXEL ip_pixel;
	G_PIXEL sp_pixel;

	G_PIXEL line_buffer[width][FILTER_SIZE]; // line-buffers
	#pragma HLS ARRAY_PARTITION variable=line_buffer complete dim=2

	L1: for(int row = 0; row < height; row++)
	{
	L2: for(int col = 0; col < width; col++)
	{
#pragma HLS LOOP_FLATTEN off
#pragma HLS PIPELINE II=1

		input_mat >> ip_pixel;

		line_buffer[col][FILTER_SIZE-1] = ip_pixel;

		IN_WINDOW.shift_pixels_left();
		IN_WINDOW.insert_pixel(line_buffer[col][0], 0, 2);
		IN_WINDOW.insert_pixel(line_buffer[col][1], 1, 2);
		IN_WINDOW.insert_pixel(line_buffer[col][2], 2, 2);


		//This design assumes there are no edges on the boundary of the image
		if ( (row>=FILTER_OFFS) & (col>=FILTER_OFFS) & (row<height) & (col<width) )
			sp_pixel = sobel_operator(IN_WINDOW);
		else
			sp_pixel.val[0] = 0;

		output_mat << sp_pixel;

		for (int fil = 0; fil < FILTER_SIZE-1; fil++){
#pragma HLS UNROLL
			line_buffer[col][fil] = line_buffer[col][fil+1];
		}

	}
	}
}

void hls_video_block (AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM) {
#pragma HLS INTERFACE axis port=OUTPUT_STREAM bundle=VIDEO_OUT
#pragma HLS INTERFACE axis port=INPUT_STREAM bundle=VIDEO_IN
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS DATAFLOW

	RGB_IMAGE input_mat (height, width);
	G_IMAGE im_1 (height, width);
	G_IMAGE im_2 (height, width);
	RGB_IMAGE output_mat (height, width);

	//Convert AXI video stream to mat
	hls::AXIvideo2Mat(INPUT_STREAM, input_mat);

	//Perform operation on "CV-style" mat
	hls::CvtColor<HLS_RGB2GRAY>(input_mat, im_1);
	hls_2DFilter(im_1, im_2);
	hls::CvtColor<HLS_GRAY2RGB>(im_2, output_mat);

	//Convert mat to AXI video stream
	hls::Mat2AXIvideo(output_mat, OUTPUT_STREAM);

}

G_PIXEL sobel_operator(G_WINDOW& input_window){
	G_PIXEL temp_pixel;

	char kernelx[3][3] = { { -1, 0, 1 },
	    { -2, 0, 2 },
	    { -1, 0, 1 } };

	char kernely[3][3] = { { -1, -2, -1 },
		{ 0,  0,  0 },
		{ 1,  2,  1 } };

	char x_mag, y_mag;

	x_mag = 0;
	y_mag = 0;

	hor_conv: for (int rowOffset = -1; rowOffset <= 1; rowOffset++){
#pragma HLS UNROLL
		ver_conv: for (int colOffset = -1; colOffset <= 1; colOffset++){
#pragma HLS UNROLL
			temp_pixel = input_window.getval(1 + rowOffset, 1 + colOffset);
			x_mag = x_mag + (temp_pixel.val[0] * kernelx[1 + rowOffset][1 + colOffset]);
			y_mag = y_mag + (temp_pixel.val[0] * kernely[1 + rowOffset][1 + colOffset]);
		}
	}

	if ((hls::abs(x_mag) + hls::abs(y_mag)) > 125){
		return 255;
	} else {
		return 0;
	}

	return 0;

}
