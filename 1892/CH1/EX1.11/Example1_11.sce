// Example 1.11

clear; clc; close;

format('v',8);
// Given data
f=50;//in Hz
P=4;//no. of poles
Pin=50;//in kW
N=1440;//in rpm
StatorLoss=1000;//in watts
FrictionalLoss=650;//in watts

//Calculations
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//Slip

N=Ns*(1-S);//in rpm
P2=Pin-StatorLoss/1000;//in KW
//formula-:  P2:Pc:Pm=1:S:1-S
Pc=S*P2;//in KW
Pm=P2-Pc;//in KW
Pout=Pm-FrictionalLoss/1000;//in KW
Eff=Pout/Pin*100;//in %
disp(Eff,"Full load efficiency in % : ");
