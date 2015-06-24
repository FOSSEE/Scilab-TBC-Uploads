//clc();
clear;
//To determine isotopic mass
M1=199.5;         //isotopic mass in a.m.u
T1=5;             //first critical temperature in K
T2=5.1;           //second critical temperature in K
M2=M1*(T1/T2)^2;
printf("isotopic mass at 5.1 K is %f a.m.u",M2);
