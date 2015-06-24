// Example  1.76

clc;clear;close;

// Given data
format('v',6);
P=6;//no. of poles
f=50;//in Hz
Tmax=30;//in N-m
Nm=960;//in rpm
S=5;//in %
R2=0.6;//in ohm

//calculations
S=S/100;//slip
Ns=120*f/P;//in rpm
Sm=(Ns-Nm)/Ns;//slip at max speed
X2=R2/Sm;//in ohm
Tau_s=2*S*Sm/(S^2+Sm^2)*Tmax;//in N-m
disp(Tau_s,"Torque exerted by the motor in N-m : ");
