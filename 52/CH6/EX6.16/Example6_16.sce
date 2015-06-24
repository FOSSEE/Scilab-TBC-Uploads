//Example 6.16
//Program to determine filter coefficients obtained by sampling:
//N=15
clear;
clc ;
close ;
N=15;
U=1;       //Zero Adjust
for n=0:1:N-1
h(n+U)=(1+2*cos(2*%pi*(7-n)/N)+2*cos(4*%pi*(7-n)/N)+2*cos(6*%pi*(7-n)/N))/N;
end
disp(h,"Filter Coefficients,h(n)=");
