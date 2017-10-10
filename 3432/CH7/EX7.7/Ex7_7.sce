//Example 7.7
//Analog computer Implementation.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// State space model of the given system
F=[-6 -11 -6; 1 0 0; 0 1 0];
G=[6; 0; 0];
H=[0 0 1];
J=0;
sys_ss=syslin('c',F,G,H,J)
disp(sys_ss)
//------------------------------------------------------------------
//Transfer function form
[d,Ns,Ds]=ss2tf(sys_ss)
Ns=clean(Ns);
G=syslin('c',Ns/Ds);
disp(G)
//------------------------------------------------------------------
// convert numerator - denominator to pole - zero form
//gain (K) pole (P) and zeros (Z) of the system
temp=polfact(Ns);
Z=roots(Ns); //locations of zeros
P=roots(Ds); //locations of poles
K=temp(1); //first entry is always gain
disp( K,"Gain", P, "Poles",Z,"Zeros",)
//------------------------------------------------------------------
