//Exa 8.11
clc;
clear;
close;
//Given data :
A=2.5;//in mm^2
A=A*10^-6;//in m^2
B=1;//in KHz
B=B*10^3;//in Hz
Dstar=10^11;//mHz^1/2W^-1
NEP=sqrt(A*B)/Dstar;//in Watts
disp(NEP*10^12,"Smallest detectable signal power in pW : ");