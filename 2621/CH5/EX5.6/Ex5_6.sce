// Example 5.6
clc;
clear;
close;
// Given data
format('v',5);
Rs= 5*10^3;//series resistance in Ω
Ls= 0.8;// seried inductance in H
Cs= 0.08*10^-12;//series capacitance in F
Cp= 1.0*10^-12;// parallel capacitance in F
fs= 1/(2*%pi*sqrt(Ls*Cs));// series resonant frequency in Hz
fs= fs*10^-3;// in kHz
fp= 1/(2*%pi)*sqrt((1+Cs/Cp)/(Ls*Cs));// parallel resonant frequency in Hz
fp= fp*10^-3;// in kHz
disp(fs,"The series resonant frequency in kHz is : ")
disp(fp,"The parallel resonant frequency in kHz is : ")


