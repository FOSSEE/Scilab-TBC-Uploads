// Example 7.10:oscillation frequency 
clc;
clear;
close;
C=100;//capacitance of tunned circuit in pico farad
L1=1;//INDUCTANCE of tunned circuit in milli henry
L2=0.1;//INDUCTANCE of tunned circuit in milli henry
fo=(1/(2*%pi*sqrt((L1+L2)*10^-3*C*10^-12)))*10^-3;//tunned frequency in killo hertz
disp(fo,"tunned frequency in killo hertz is")
