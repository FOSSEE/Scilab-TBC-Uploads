// Example 1.31

clear; clc; close;
format('v',7);
// Given data
f=50;//in Hz
P=8;//no. of poles
Sf=40;//in %
R2=0.001;//in ohm/phase
X2=0.005;//in ohm/phase

//Calculations
Sf=Sf/100;//slip
//Formula : T proportional to S*R2/(R2^2+(S*X2)^2)
Sm=R2/X2;//slip for max Torque
TmByTfl=Sm*R2/(R2^2+(Sm*X2)^2)*(R2^2+(Sf*X2)^2)/Sf/R2;//in ratio
disp(TmByTfl,"Ratio of max torque to full load torque :  ");
Ns=120*f/P;//in rpm
N=Ns*(1-Sm);//in rpm
disp(N,"Speed for maximum torque in rpm : ");
