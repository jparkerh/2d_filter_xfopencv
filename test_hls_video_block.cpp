#include "hls_opencv.h"

#include <iostream>

using namespace std;

typedef hls::stream<ap_axiu<24,1,1,1> > AXI_STREAM;
typedef hls::Mat<720, 1080, HLS_8UC3> RGB_IMAGE;
typedef hls::Mat<720, 1080, HLS_8UC1> R_IMAGE;
typedef hls::Scalar<3, unsigned char> RGB_PIXEL;
typedef hls::Scalar<1, unsigned char> R_PIXEL;

void hls_video_block (AXI_STREAM&, AXI_STREAM&);


#define INPUT_IMAGE          "./IMG_0562.bmp"
#define OUTPUT_IMAGE         "./output.bmp"
//______________________________________________________________________________
// test sequence of grey scale image

int main (int argc, char** argv) {

IplImage* src;
IplImage* dst;

#if 1
src = cvLoadImage(INPUT_IMAGE);
cout << "=================================="<<endl;
cout << "nChannels = " << src->nChannels << endl;
cout << "depth = " << src->depth << endl;
cout << "width = " << src->width << endl;
cout << "height = " << src->height << endl;
cout << "=================================="<<endl;

#endif

// AXI stream version
AXI_STREAM src_axi, dst_axi;


for (int k=0;k<1;k++) {

    src = cvLoadImage(INPUT_IMAGE);
    dst = cvCreateImage(cvGetSize(src), src->depth, src->nChannels);

    IplImage2AXIvideo(src, src_axi);

    //______________________________________________________________________________
    // DUT:
    hls_video_block(src_axi, dst_axi);
    //______________________________________________________________________________

    // Convert the AXI4 Stream data to OpenCV format
    AXIvideo2IplImage(dst_axi, dst);


}

cvSaveImage(OUTPUT_IMAGE, dst);
cvReleaseImage(&src);
cvReleaseImage(&dst);

#if 0
char tempbuf[2000];
sprintf(tempbuf, "diff --brief -w %s %s", OUTPUT_IMAGE, OUTPUT_IMAGE_GOLDEN);

int ret = system(tempbuf);
if (ret != 0) {
    printf("????????????? Test Failed!\n");
    ret = 1;
} else {
    printf("------------- Test Passed!\n");
}

return ret;
#endif

return 0;

}
