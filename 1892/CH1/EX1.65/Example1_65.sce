// Example  1.65

clc;clear;close;

// Given data
format('v',6);
P=6;//no. of poles
f1=50;//in Hz
S0=1;//in %
Sfl=3;//in %

//calculations
S0=S0/100;//slip
Sfl=Sfl/100;//slip
Ns=120*f1/P;//in rpm
disp(Ns,"(a) Synchronous speed in rpm : ");
N0=(1-S0)*Ns;//in rpm
disp(N0,"(b) No Load speed in rpm : ");
Nfl=(1-Sfl)*Ns;//in rpm
disp(Ns,"(c) Full load speed in rpm : ");
f2_st=f1*S0;//in Hz
disp(f2_st,"(d) Frequeny of rotor current at standstill in Hz : ");
f2_fl=f1*Sfl;//in Hz
disp(f2_fl,"(e) Frequeny of rotor current at full load in Hz : ");
//Answer of part (c) & part(d) is wrong. Calcultion mistake & slip is not divided by 100.
