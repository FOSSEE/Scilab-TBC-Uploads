
//example 12.4
//page 454
clc; funcprot(0);
//initialisation of variable
Q=500/449;
D=8/12;
pi=3.14;
g=32.2;
N=1800;//rpm
A=pi*D^2/4;
V=Q/A;
f=0.022//from chart
HL=V^2/2/g*(12.1+224.9*f);
hs=HL+119.4;
Ns=N*sqroot(Q*449)/hs^0.75;
disp(Ns,"specific speed (rpm)");
clear
