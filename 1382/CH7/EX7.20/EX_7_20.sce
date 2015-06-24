// Example 7.20:oscillation frequency 
clc;
clear;
close;
C1=120;//capacitance of tunned circuit in PICO farad
C2=1500;//capacitance of tunned circuit in pico farad
C3=15;//capacitance of tunned circuit in pico farad
Cx=(C1*C2)/(C1+C2);//capacitance in pico farad
Ct=(Cx*C3)/(Cx+C3);//total capacitance in pico farad
L=10;//INDUCTANCE of tunned circuit in micro henry
fo=(1/(2*%pi*sqrt(L*10^-6*Ct*10^-12)))*10^-6;//tunned frequency in mega hertz
disp(fo,"tunned frequency in killo mega is")

