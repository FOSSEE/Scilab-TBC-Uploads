clear;
clc;
disp("--------------Example 12.5---------------")
bandwidth = 10*10^6; // 10 Mbps
Tp=25.6*10^-6; // 25.6 microseconds
Tfr=2*Tp; // formula
min_frame_size = bandwidth*Tfr; // formula
bytes=min_frame_size/8; // 1 byte = 8 bits
printf("The minimum frame size is %d bits or %d bytes.\nThis is the minimum size of the frame for Standard Ethernet.",min_frame_size,bytes); // display result
