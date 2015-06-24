// Example 7.9:oscillation frequency 
clc;
clear;
close;
C=0.2;//capacitance of tunned circuit in MICRO farad
L1=0.5;//INDUCTANCE of tunned circuit in milli henry
L2=1;//INDUCTANCE of tunned circuit in milli henry
fo=(1/(2*%pi*sqrt((L1+L2)*10^-3*C*10^-6)));//tunned frequency in killo hertz
disp(fo,"tunned frequency in killo hertz is")
