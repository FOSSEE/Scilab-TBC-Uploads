//Example 3.16: 
clc;
clear;
close;
//given data :
Ib=68*10^-6;// in A
Ie=30*10^-3;// in A
Beta=440;// constant
alfa=Beta/(1+Beta);
Ic=alfa*Ie*10^3;
format('v',6)
disp(Ic,"Collector current,Ic(mA) = ")
