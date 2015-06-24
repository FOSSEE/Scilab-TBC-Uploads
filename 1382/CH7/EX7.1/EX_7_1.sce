// Example 7.1:oscillation frequency 
clc;
clear;
close;
c=450;//capacitance of tunned circuit in pico farad
L=29.3;//INDUCTANCE of tunned circuit in micro henry
fo=(1/(2*%pi*sqrt(L*10^-6*c*10^-12)))*10^-6;//tunned frequency in mega hertz
disp(fo,"tunned frequency in mega hertz is")
