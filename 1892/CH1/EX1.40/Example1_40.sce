// Example 1.40

clear; clc; close;

format('v',8);
// Given data
P=4;//no. of poles
VL=200;//in volt
f=50;//in Hz
R2=0.1;//in ohm/phase
X2=0.9;//in ohm/phase
S=4;//in %
K=0.67;//rotor to stator turns  

//Calculations
S=S/100;//slip
E1ph=VL/sqrt(3);//in volt
E2ph=K*E1ph;//in volt
Ns=120*f/P;//in rpm
ns=Ns/60;//in rps
T=3/2/%pi/ns*S*E2ph^2*R2/(R2^2+(S*X2)^2);//in N-m
disp(T,"Total torque at 4% slip in N-m :");
Tm=3/2/%pi/ns*E2ph^2/2/X2;//in N-m
disp(Tm,"Maximum torque developed in N-m :");
Sm=R2/X2;//Max Slip
Nm=Ns*(1-Sm);//in rpm
disp(Nm,"Speed at max Torque in rpm : ");
Pmax=Tm*2*%pi*Nm/60;//in watts
disp(Pmax,"Maximum mechanical power in watts : ");
