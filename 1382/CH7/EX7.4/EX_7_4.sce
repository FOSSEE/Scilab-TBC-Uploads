// Example 7.4:oscillation frequency 
clc;
clear;
close;
C1=0.005;//capacitance of tunned circuit in micro farad
C2=0.01;//capacitance of tunned circuit in micro farad
C=(C1*C2)/(C1+C2);//total capacitance in micro farad
L=100;//INDUCTANCE of tunned circuit in micro henry
fo=(1/(2*%pi*sqrt(L*10^-6*C*10^-6)))*10^-3;//tunned frequency in killo hertz
disp(fo,"tunned frequency in killo hertz is")
