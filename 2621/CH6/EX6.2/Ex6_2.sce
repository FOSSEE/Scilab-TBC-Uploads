// Example 6.2
clc;
clear;
close;
// Given data
format('v',12);
f_out_max= 200;// in kHz
f_lowest= 1;// in Hz
// Frequency of reference oscillator,
f_ref_os= 2.2*f_out_max;// in kHz
disp("The frequency of reference oscillator is : "+string(f_ref_os)+" kHz")
// Formula used : f_lowest= f_ref_os/2^n
n= round(log(f_ref_os*10^3/f_lowest)/log(2));// number of bits required
disp("The number of bits required is : "+string(n))

