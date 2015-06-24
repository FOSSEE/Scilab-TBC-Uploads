clear;
clc;
disp("--------------Example 17.3---------------")
// for all STS-1 , STS-3 and STS-n frame rate is same hence frame duration is same
frame_rate=8000; // frames per sec
frame_duration=1/frame_rate;
printf("In SONET, %d frames are sent per second. This means that the duration of an STS-l, STS-3, or STS-n frame is the same and equal %d microseconds.",frame_rate,frame_duration*10^6); // display result
