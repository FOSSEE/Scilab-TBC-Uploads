// Example  1.72

clc;clear;close;

// Given data
format('v',6);
V=500;//in Volt
f1=50;//in Hz
phase=3;//no. of phase
P=6;//no. of poles
Nr=995;//in rpm
Pm=20;//mech power in KW
StatorLoss=1500;//in watts
pf=0.87;//power facator

//calculations
Ns=f1*120/P;//in rpm
S=(Ns-Nr)/Ns;//slip
disp(S,"(a) Slip is : ");
Prc=S/(1-S)*Pm*1000;//in watts
disp(Prc,"(b) Rotor I^2*R Loss in watts : ");
RotorInput=Prc/S;//in watts
TotalInput=RotorInput+StatorLoss;//in watts
disp(TotalInput/1000,"(c) Total input in KW : ");
LineCurrent=TotalInput/sqrt(3)/V/pf;//in Ampere
disp(LineCurrent,"(d) Line current in Ampere : ")
fr=S*f1;//in Hz
disp(fr,"Rotor frequency in HZ : ");
