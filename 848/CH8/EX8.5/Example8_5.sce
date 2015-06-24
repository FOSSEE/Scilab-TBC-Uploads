//clear//
//Caption:Calculation of Number of bits affected by a burst error
//Example8.5
//page 306
clear;
clc;
close;
bit_error_dur = 1e-03; //bit-corrupting burst noise duration in msec
B = 10e03; //data rate 10kb/sec
N = B*bit_error_dur;
disp(N,'Number of bits affected by a burst error N=')
//Result
// Number of bits affected by a burst error N = 10.  
