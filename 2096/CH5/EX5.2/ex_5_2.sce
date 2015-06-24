//Example 5.2 // possible error
clc;
clear;
close;
//given data :
n=3;
R=1/10^n;
v=2; // in v
r=0.5/100;
R1=1*R; // full scale range of 1 V
R2=10*R; // full scale range of 10 V
Lsd=5*R;
Pe=(r*v)+Lsd;
disp(Pe,"the possible error,Pe(V) = ")
