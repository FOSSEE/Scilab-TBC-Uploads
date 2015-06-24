// Example 1.34

clear; clc; close;

format('v',7);
// Given data
P=8;//no. of Poles
f=50;//in Hz
Tm=150;//in N-m
N=650;//in rpm
R2=0.6;//in ohm
S=4;//in %

//Calculations
S=S/100;//Slip
Ns=120*f/P;//in rpm
Sm=(Ns-N)/Ns;//Maximum Slip
//Formula : T proportional to S*E2^2*R2/(R2^2+(S*X2)^2)
X2=R2/Sm;//in ohm
T=Tm*S*(R2^2+(Sm*X2)^2)/Sm/(R2^2+(S*X2)^2);//In N-m
disp(T,"Torque at 4% slip (in N-m) : ");
