// Example  1.64

clc;clear;close;

// Given data
format('v',6);
P=4;//no. of poles
f1=50;//in Hz
f2=1.5;//in Hz

//calculations
S=f2/f1;//slip
disp(S*100,"Slip in % : ");
Ns=120*f1/P;//in rpm
N=(1-S)*Ns;//in rpm
disp(N,"Running speed of motor in rpm : ");
