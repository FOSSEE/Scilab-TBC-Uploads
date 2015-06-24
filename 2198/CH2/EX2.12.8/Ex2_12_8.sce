//Ex 2.12.8
clc;clear;close;
format('v',8);

//Given : 
Rf=10;//ohm
Vgamma=0.5;//Volt
RL=20;//ohm
V=3;//Volt
//Loop 1: 75*I1-50*I=V-Vgamma
//Loop 2: -50*I1+80*I=-Vgamma
A=[75 -50;-50 80];
B=[V-Vgamma -Vgamma];
X=B*A^-1;
I1=X(1);//A
I=X(2);//A
Vx=-Vgamma+50*I1;//Volt
disp(Vx,"DC source(Volts) : ");
//Answer is wrong in the textbook.
