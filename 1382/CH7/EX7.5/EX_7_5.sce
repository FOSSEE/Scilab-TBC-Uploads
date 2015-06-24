// Example 7.5:oscillation frequency 
clc;
clear;
close;
C1=500;//capacitance of tunned circuit in PICO farad
C2=500;//capacitance of tunned circuit in pico farad
C=(C1*C2)/(C1+C2);//total capacitance in micro farad
L=1;//INDUCTANCE of tunned circuit in milli henry
fo=(1/(2*%pi*sqrt(L*10^-3*C*10^-12)))*10^-3;//tunned frequency in killo hertz
disp(fo,"tunned frequency in killo hertz is")
