// Example 7.18:oscillation frequency 
clc;
clear;
close;
C=100;//capacitance of tunned circuit in pico farad
L1=50;//INDUCTANCE of tunned circuit in micro henry
L2=50;//INDUCTANCE of tunned circuit in micro henry
fo=(1/(2*%pi*sqrt((L1+L2)*10^-6*C*10^-12)))*10^-6;//tunned frequency in mega hertz
disp(fo,"tunned frequency in mega hertz is")
