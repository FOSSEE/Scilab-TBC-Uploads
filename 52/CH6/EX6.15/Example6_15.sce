//Example 6.15
//Program to determine filter coefficients obtained by sampling:
//N=7,w=pi/2
clear;
clc ;
close ;
N=7;
U=1;       //Zero Adjust
for n=0+U:1:N-1+U
h(n)=(1+2*cos(2*%pi*(n-U-3)/7))/N
end
disp(h,"Filter Coefficients,h(n)=")