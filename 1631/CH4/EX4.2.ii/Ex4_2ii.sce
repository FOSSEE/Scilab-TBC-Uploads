//Caption: Transmission Bandwidth
//Example 4.2.ii
//page no 167
//find The transmission Bandwidth
clc;
clear;
//Given data
bandwidth=4.2*10^6;
fm=bandwidth;
q=512// Quantization levels
v=9;
bw=v*fm;
disp(bw*10^-6,"The transmission Bandwidth is ");
disp("MHz");
