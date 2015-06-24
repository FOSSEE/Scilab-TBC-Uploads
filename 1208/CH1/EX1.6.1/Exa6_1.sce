//Exa 6(i)
clc;
clear;
close;
//given data :
r=9;//in % per annum
i=r/100;
//componding is done half yearly
m=2;
//formula EIR=(1+i/m)^m-1;
EIR=(1+i/m)^m-1;
%EIR=100*EIR;
disp(%EIR,"Half yearly EIR(in %) : ");