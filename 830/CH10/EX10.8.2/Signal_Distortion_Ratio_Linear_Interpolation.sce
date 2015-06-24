//Graphical//
//Example 10.8.2
//Signal to Distortion Ratio using Linear Interpolation
//Calculation of no. of subfilters
clear;
clc;
close;
SDR_dB = 50; //Signal to distortion ratio = 50 dB
Wx = 0.8*%pi; //Digital maximum frequency of input data
SDR = 10^(SDR_dB/10)
disp('The Number of subfilters required')
I = Wx*((SDR/80)^(1/4));
I = ceil(I)
