//Example 6.17
//Program to design bandpass filter with following specifications:
//N=7, fc1=1000Hz, fc2=3000Hz, F=8000Hz
clear;
clc ;
close ;
N=7;
U=1;       //Zero Adjust
for n=0:1:N-1
h(n+U)=2*(cos(2*%pi*(3-n)/N)+cos(4*%pi*(3-n)/N))/N;
end
disp(h,"Filter Coefficients,h(n)=");
