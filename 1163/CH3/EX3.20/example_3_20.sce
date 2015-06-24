clear;
clc;
disp("--------------Example 3.20---------------")
rate=30 ; // screen is refreshed 30 times per second
 // screen resolution = 1920x1080
vl = 1920; 
hl = 1080;
bits_per_pixel=24; // bits to represent one color pixel
br=vl*hl*rate*bits_per_pixel; // formula to calculate bit rate
bit_rate=br*10^-9;  // multiply with conversion factor
printf("The bit rate of HDTV is %2.1f Gbps.",bit_rate); // display the result
