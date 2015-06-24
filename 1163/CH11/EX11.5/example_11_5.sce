clear;
clc;
disp("--------------Example 11.5---------------")
bandwidth= 1*10^6; // 1 Mbps
delay = 20*10^-3; // 20 ms
bandwidth_delay_product=bandwidth*delay;
frame_length=1000; // each frame has 1000 bits
num_frames= 15; // The system can send up to 15 frames during a round trip.
utilization_percentage = (frame_length*num_frames/bandwidth_delay_product)*100; // formula
printf("The bandwidth delay product is %d and the utilization percentage of the link is %d percent.",bandwidth_delay_product,utilization_percentage); // display result
