clear;
clc();
//Given:
l=9.3; // length in cm
b=8.5;// breadth in cm
h=5.4;// height in cm
V= l*b*h; // Volume in cm^3
delta_l = 0.1; delta_b = 0.1; delta_h = 0.1; // scale has a least count = 0.1 cm
// absolute error 
delta_V = (b*h*delta_l + l*h*delta_b +l*b*delta_h); // in cm^3
//relative error 
re = delta_V/V;
p= re*100; // Evaluating percentage error
printf("Percentage Error = %d percentage.",p);
