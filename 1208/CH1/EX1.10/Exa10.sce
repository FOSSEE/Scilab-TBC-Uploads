//Exa10
clc;
clear;
close;
//given data :
r=6;//in % per annum
i=r/100;
//componding is done half yearly
m=2;
//formula EIR=(1+i/m)^m-1;
EIR=(1+i/m)^m-1;
//calculating FVA taking i=EIR;
//formula FVA=(A*(1+i)^n-1)/i;
A=100;//in Rs
n=18;//in years
i=EIR;
FVA=(A*((1+i)^n-1))/i;
disp(FVA,"Future Value of amount(in Rs) : ");
//Note: answer given in the book is not accurate