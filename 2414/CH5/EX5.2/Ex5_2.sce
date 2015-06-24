clc;
//page no 148
//prob no. 5.2
function [f]=frequency(f0,k,T,T0)
    f=f0+k*f0*(T-T0);
endfunction;
k=40*10^-6;
f=148;
fmax=frequency(f,k,32,20);
fmin=frequency(f,k,-8,20);
disp('Mhz',fmax,'The maximum possible frequency , fmax= ');
disp('Mhz',fmin,'The maximum possible frequency , fmin= ');
