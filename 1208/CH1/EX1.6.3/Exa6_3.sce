//Exa 6(iii)
clc;
clear;
close;
//given data :
r=9;//in % per annum
i=r/100;
//componding is done monthly
m=12;
//formula EIR=(1+i/m)^m-1;
EIR=(1+i/m)^m-1;
%EIR=100*EIR;
disp(%EIR,"Monthly EIR(in %) : ");