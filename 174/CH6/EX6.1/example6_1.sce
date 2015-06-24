// To find the form factor and error
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 6-1 in Page 131


clear; clc; close;

// Given data
//let
E_m = 10; //Let the peak amplitude of the square wave be 10V
T = 1; //Let the time period of the square wave be 1s

function y= f(t),y=(E_m)^2 ,endfunction
E_rms = sqrt(1/T * intg(0,T,f));
printf("(a)  The rms value of the square wave = %d V \n",E_rms);

function x = ff(t),x =(E_m) ,endfunction
E_av = (2/T * intg(0,T/2,ff));
printf("  The average value of the square wave = %d V\n",E_av);

k = E_rms/E_av;
printf("  The form factor of the square wave =%d\n",k);

k_sine = 1.11;
k_square = 1;
%error = (k_sine - k_square)/k_square*100;
printf("(b)  The percentage error in meter indication = %d %%",%error);

//Result
// (a)  The rms value of the square wave = 10 V 
//  The average value of the square wave = 10 V
//  The form factor of the square wave =1
// (b)  The percentage error in meter indication = 11 % 


