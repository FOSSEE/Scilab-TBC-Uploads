//Exa Misc 8.1
clc;
clear;
close;
//given data
format('v',5);
L2=0.4;//in mH
C=0.004;//in µF
f=120;//in KHz
L1=1/(4*%pi^2*(f*10^3)^2*C*10^-6)-L2*10^-3;//in H
disp(L1*10^3,"Value of L1(in mH) :");
