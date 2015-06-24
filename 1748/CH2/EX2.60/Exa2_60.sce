//Exa 2.60
clc;
clear;
close;
//Given data :
format('v',6);
f=50;//in Hz
P=4;//no. of poles
phase=3;//no. of phase
S=4;//in %
S=4/100;//in fraction
Ns=120*f/P;//in rpm
N1=Ns-Ns*S;//in rpm
//When speed reduced to 10%
N2=N1*85/100;//in rpm(NewSpeed)
disp(N2,"New speed(in rpm) :");
//New speed is reduced by 15 %
Sdash=(Ns-N2)/Ns;//in fraction
disp(Sdash,"New Slip : ");