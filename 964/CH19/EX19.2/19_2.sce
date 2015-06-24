clc;
clear;
a0=0;
//f(t)=-1 for -T/2 to -T/4
//f(t)=1 for -T/4 to T/4
//f(t)=-1 for T/4 to T/2
//ak=2/T* (integration of f(t)*cos(w0*t) from -T/2 to T/2)
//ak=2/T*((integration of f(t)*cos(w0*t) from -T/2 to -T/4) + (integration of f(t)*cos(w0*t) from -T/4 to T/4) + (integration of f(t)*cos(w0*t) from T/4 to T/2))
//Therefore, 
//ak=4/(k*%pi) for k=1,5,9,.....
//ak=-4/(k*%pi) for k=3,7,11,.....
//ak=0 for k=even integers
//similarly we find the b's.
//all the b's=0
disp("The fourier approximtion is:")
disp("4/(%pi)*cos(w)*t) - 4/(3*%pi)*cos(3*(w)*t) + 4/(5*%pi)*cos(5*(w)*t) - 4/(7*%pi)*cos(7*(w)*t) + .....")