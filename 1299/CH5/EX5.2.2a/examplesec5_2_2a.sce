//Example sec 5.2.2 a
//Routh array in scilab
clear;clc;
xdel(winsid());

s=poly(0,'s')
A=s^5+s^4+2*s^3+2*s^2+4*s+6
routh_t(A)


