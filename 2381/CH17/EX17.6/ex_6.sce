//Example 6 // Frequency
clc;
clear;
close;
//given data :
del=1;// in m
mu=4*%pi*10^-7;// in H/m
sigma=4;// in siemen/m
v=1*10^-3/(%pi*del^2*mu*sigma);
disp(v,"Frequency,v(kHz) = ")
