//Chapter 12
//page no 490
//given
clc;
clear all;
Ipd=0.15;           //in mA
n=0.75;
e=1.6*10^-19;           //electron charge
hv=1.55*10^-19;
Pin=hv*Ipd/n/e;
printf("\n Pin = %0.6f mW",Pin);        //Result
//answer in book is misprint
