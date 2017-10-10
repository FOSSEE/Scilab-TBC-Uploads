//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_12
clc;
clear;
V=460;// voltage in V
N1=1200;//Speed in rpm
N2=1000;//Speed in rpm
r1=0.06;// Resistance in ohm
r2=0.32;// Resistance in ohm
x1=2.16;//Reactance in ohm
x2=0.48;//Reactance in ohm
x=0.6*%i;//Reactance in ohm
xm=8*%i;//Reactance in ohm
S1=(N1-N2)/N1;
Z=(xm+(x1+x))/(x1+xm+x);
[M, P] = polar(Z);
M * exp(%i * P);
disp(Z,"z:")
