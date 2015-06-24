//Ex 7.1
clc;
clear;
close;
format('v',5);

//Given data :
T=10;//N-m
N=1500;//rpm
IP=1.85;//KW
//Calculation
BP=T*2*%pi*N/60/1000;//KW
FP=IP-BP;//KW
disp(FP,"Friction power(KW) : ");
