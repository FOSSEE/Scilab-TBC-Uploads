//Example sec 5.2.2 b
//Routh array in scilab
clear;clc;
xdel(winsid());

s=poly(0,'s')
B=s^5+2*s^4+6*s^3+12*s^2+8*s+16
routh_t(B)
// In this example a row of zero forms at s^3.
//The function automatically the derivative of the
//auxillary polynomial 2*s^4+12*s^2+16
//viz=8*s^3+24*s
