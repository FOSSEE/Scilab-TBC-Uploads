// Example 1.38

clear; clc; close;

format('v',7);
// Given data
VL=3.3;//in KV
P=20;//no of poles
f=50;//in Hz
R2=0.025;//in ohm/phase
X2=0.28;//in ohm/phase
N=294;//Full load speed in rpm

//Calculations
Sm=R2/X2;//Max Slip
disp(Sm*100,"Slip at max torque(in %) : ");
Ns=120*f/P;//in rpm
Sfl=(Ns-N)/Ns;//Full load slip
//Formula : T proportional to S*E2^2*R2/(R2^2+(S*X2)^2)
TmByTfl=Sm/(R2^2+(Sm*X2)^2)*((R2^2+(Sfl*X2)^2))/Sfl;//ratio
disp(TmByTfl,"Ratio of max to full load torqiue : ");
