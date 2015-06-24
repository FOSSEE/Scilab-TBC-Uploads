// Example  1.79

clc;clear;close;

// Given data
format('v',6);
P=16;//no. of poles
f=50;//in Hz
Z2=0.02+%i*0.15;//in ohm
Nr=360;//in rpm

//calculations
Ns=120*f/P;//in rpm
Sfl=(Ns-Nr)/Ns;//slip at full load
R2=real(Z2);//in ohm
X2=imag(Z2);//in ohm
Sm=R2/X2;//slip at max torque
Nm=(1-Sm)*Ns;//in rpm
disp(Nm,"(a) Speed at which max Torque occurs in rpm : ");
TmaxByTfl=(Sfl^2+Sm^2)/2/Sfl/Sm;//ratio
disp(TmaxByTfl,"Ratio of maximum to full load torque : ");
R2dash=X2;//for max Torque
r=R2dash-R2;//in ohm
disp(r,"(c) External resistance per phase required in ohm : ");
