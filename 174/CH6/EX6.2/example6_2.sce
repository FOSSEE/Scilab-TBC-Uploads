// To find the form factor and error
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 6-2 in Page 132


clear; clc; close;

// Given data
E_m = 150; //Let the peak amplitude of the sawtooth wave be 150V
T = 3; //Let the time period of the sawtooth wave be 3s
// e = 50*t; As seen from the figure 6-7b in page 131

//Calculations
function y= f(t),y=(50*t)^2 ,endfunction
E_rms = sqrt(1/T * intg(0,T,f));
printf("(a)  The rms value of the sawtooth wave = %d V \n",E_rms);

function x = ff(t),x =(50*t) ,endfunction
E_av = (1/T * intg(0,T,ff));
printf("The average value of the sawtooth wave = %d V\n",E_av);

k_st = E_rms/E_av;
printf("The form factor of the sawtooth wave =%0.3f\n",k_st);

k_sine = 1.11;
r = k_sine/k_st;
printf("(b)  The ratio of the two form factors = %0.3f\n",r);

printf("The meter indication is low by a factor of %0.3f\n",r);
%error = (r - 1)/1*100;
printf("The percentage error in meter indication = %0.1f %%",%error);

//Result
// (a)  The rms value of the sawtooth wave = 86 V 
// The average value of the sawtooth wave = 75 V
// The form factor of the sawtooth wave =1.155
// (b)  The ratio of the two form factors = 0.961
// The meter indication is low by a factor of 0.961
// The percentage error in meter indication = -3.9 % 
