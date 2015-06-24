// Example 7.19:oscillation frequency 
clc;
clear;
close;
C1=120;//capacitance of tunned circuit in PICO farad
C2=1500;//capacitance of tunned circuit in pico farad
C=(C1*C2)/(C1+C2);//total capacitance in pico farad
L=10;//INDUCTANCE of tunned circuit in micro henry
fo=(1/(2*%pi*sqrt(L*10^-6*C*10^-12)))*10^-6;//tunned frequency in mega hertz
disp(fo,"tunned frequency in mega hertz is")
