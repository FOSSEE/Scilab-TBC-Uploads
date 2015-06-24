clear;
clc;
disp("--------------Example 4.14---------------")
bits= 8; // bits per sample
fl=0; // The human voice normally contains frequencies from 0 to 4000 Hz.
fh=4000; // Hz
sampling_rate = 2*fh; // twice the highest frequency
bit_rate=sampling_rate*bits;  // formula
printf("The sampling rate is %d samples/s and the bit rate is %d kbps.",sampling_rate,bit_rate*10^-3); // display the result with appropriate units
