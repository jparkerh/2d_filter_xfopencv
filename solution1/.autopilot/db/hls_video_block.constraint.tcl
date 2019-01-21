set clock_constraint { \
    name clk \
    module hls_video_block \
    port ap_clk \
    period 3 \
    uncertainty 0.3 \
}

set all_path {}

set false_path {}

