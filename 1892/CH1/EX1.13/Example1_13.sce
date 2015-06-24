// Example 1.13

clear; clc; close;

format('v',6);
// Given data
Pout=25;//in KW
f=50;//in Hz
phase=3;//no. of phase
P=4;//no. of poles
N=1410;//in rpm
MechLoss=850;//in watts
StatLossBYCuLoss=1.17;
I2r=65;//in Ampere

//Calculations
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//slip
Pm=Pout*1000+MechLoss;//in watts
disp(Pm,"Gross mechanical power devloped in watts : ");
//formula-:  P2:Pc:Pm=1:S:1-S
Pc=S*Pm/(1-S);//copper loss in Watts
disp(Pc,"Rotor Copper Losses in watts : ");
R2=Pc/phase/I2r^2;//in ohm/phase
disp(R2,"Rotor resistance per phase in ohm ; ");
StatorLoss=1.7*Pc;//in watts
P2=Pc/S;//in Watts
Pin=P2+StatorLoss;//in watts
Eff=Pout*1000/Pin*100;//in %
disp(Eff,"Full laod Efficiency in % : ");
