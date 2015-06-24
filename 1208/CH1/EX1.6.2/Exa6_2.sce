//Exa 6(ii)
clc;
clear;
close;
//given data :
r=9;//in % per annum
i=r/100;
//componding is done quarterly
m=4;
//formula EIR=(1+i/m)^m-1;
EIR=(1+i/m)^m-1;
%EIR=100*EIR;
disp(%EIR,"Quarterly EIR(in %) : ");