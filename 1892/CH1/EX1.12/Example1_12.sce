// Example 1.12

clear; clc; close;

format('v',8);
// Given data
f=50;//in Hz
phase=3;//no. of phase
P=4;//no. of poles
Tsh=300;//in N-m
Tlost=50;//in N-m
fr=120;//in cycles/min
fr=fr/60;//in Hz
I2r=60;//in Ampere/phase

//Calculations
S=fr/f;//slip
disp(S*100,"(i) Slip(%) : ");
Ns=120*f/P;//in rpm
N=Ns*(1-S);//in rpm
Pout=Tsh*2*%pi*N/60;//watts
disp(Pout/1000,"(ii) Net output Power(KW) : ");
FricLoss=Tlost*2*%pi*N/60;//in watts
Pm=Pout+FricLoss;//in watts
//formula-:  P2:Pc:Pm=1:S:1-S
Pc=S*Pm/(1-S);//copper loss in Watts
PcPERphase=Pc/phase;//Copper loss per phase in watts
disp(PcPERphase,"(iii) Rotor copper loss per phase(watts) : ");
P2=Pc/S;//in watts
Eff=Pm/P2*100;//in %
disp(Eff,"(iv) Rotor efficiency in % : ");
//Formula : CuLossPerPhase=I2r^2*R2;//in watts
R2=PcPERphase/I2r^2;//in ohm/phase
disp(R2,"(v) Rotor resistance per phase(ohm/phase) : ");
