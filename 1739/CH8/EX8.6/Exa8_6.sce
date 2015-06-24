//Exa 8.6
clc;
clear;
close;
//Given data :
C_A=2;//in pF
C_D=5;//in pF
RL=50;//in Ohm
RA=1;//in KOhm
RA=1*10^3;//in Ohm
C=C_A+C_D;//in pF
R=RA*RL/(RA+RL);//in Ohm
B=1/(2*%pi*R*C*10^-12);//in Hz
disp(B*10^-6,"Circuit Bandwidth of p-i-n photodiode in MHz : ");
//Note : Ans in the book is not accurate.