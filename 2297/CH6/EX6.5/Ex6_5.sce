//Example  6.5//  Power
clc;
clear;
close;
//given data :
format('v',6)
fp=0.024;// flux per pole
lf=1.2;// leakage factor
fi=fp/lf;// in Wb
Z=756;//turns
P=4;// number of pole
N=1000;// in rpm
A=4;//constant
E=(fi*Z*N*P)/(60*A);//generated voltage
il=1/10;//load current in amperes
ish=1/100;//shunt current in amperes
ra=1;//armature resistance in ohms
is=il+ish;//current in amperes
v=((E)/(1+(ra*is)));//volts
r2=10;//ohms
il=v/r2;//amperes
pc=il*v;//Watts
disp(pc,"Power consumed is,(W)=")
//answer is wrong in the textbook
