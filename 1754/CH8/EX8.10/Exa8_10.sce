//Exa 8.10
clc;
clear;
close;
//Given data :
L=0.5;//in H
C=0.05;//in pF
R=1;//in kohm
Cm=1;//in pF
fs=1/(2*%pi*sqrt(L*C*10^-12));//in Hz
disp(fs/10^6,"Series resonant frequency in MHz :");
fp=1/(2*%pi*sqrt((L*C*10^-12*Cm*10^-12)/(C*10^-12+Cm*10^-12)));//in Hz
disp(fp/10^6,"Parallel resonant frequency in MHz :");