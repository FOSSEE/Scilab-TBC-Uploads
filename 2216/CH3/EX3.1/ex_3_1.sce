//Example 3.1 // range of propagation constants and maximum no. of modes
clc;
clear;
close;
format('v',9)
n1=1.5;//core refractive index
n2=1.49;//cladding refrative index
t=9.83;//thickness of guided layer in micro meter
h=0.85;//wavelength in µm
b1=((2*%pi*n1)/(h*10^-6));//phase propagation constant in m^-1
b2=((2*%pi*n2)/(h*10^-6));//phase propagation constant in m^-1
m=((4*t)/h)*(sqrt(n1^2-n2^2));//number of modes
disp("range of propagation constant is "+string(b1)+" to "+string(b2)+" in m^-1")
disp(round(m/2),"number of modes are")
