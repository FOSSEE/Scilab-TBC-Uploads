clear;
clc;
disp("--------------Example 4.15---------------")
analog_min_bandwidth = 4; //4 kHz
bits = 8; // bits per sample
digital_min_bandwidth = analog_min_bandwidth*bits; // formula 
printf("The minimum bandwidth for the digital signal is %d kHz.",digital_min_bandwidth); // display result
