//Exa 3.10
clc;
clear;
close;
//Given data : 
ZL=10;//in ohm
ZP=1000;//in ohm
//For max power : ZP=n^2*ZL
n=sqrt(ZP/ZL);//turn ratio
disp(n,"Turn ratio : ");
