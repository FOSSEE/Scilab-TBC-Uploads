//scilab 5.4.1
//Windows 7 operating system
//chapter 9 Basic Voltage and Power Amplifiers
clc
clear
V=10//V=voltage at frequency 5kHz
Vr=7.07//Vr=voltage at frequency 25kHz
//x=10*log10(P/Pr) where x=change in decibel(dB) of power P from some standard power Pr
//P=V^2/R=I^2*R 
//Also Pr=Vr^2/R=Ir^2*R
//x=10*(log10(V/Vr))^2=20*log10(V/Vr)
x=20*log10(V/Vr)//x=change in decibel(dB) of voltage V from some standard voltage Vr
format("v",4)
disp("dB",x,"The decibel change in the output power level is =")
