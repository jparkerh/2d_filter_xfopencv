<project xmlns="com.autoesl.autopilot.project" name="hls_video_block" top="hls_video_block">
    <files>
        <file name="../test_hls_video_block.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="../IMG_0562.bmp" sc="0" tb="1" cflags="  -Wno-unknown-pragmas"/>
        <file name="hls_video_block/hls_video_block.cpp" sc="0" tb="false" cflags="-D__XFCV_HLS_MODE__ -I./include -I./include/src --std=c++0x"/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

