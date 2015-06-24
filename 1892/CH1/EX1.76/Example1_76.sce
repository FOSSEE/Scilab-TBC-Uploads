// Example  1.76

clc;clear;close;

// Given data
format('v',6);
P=6;//no. of poles
f=50;//in Hz
Sfl=4;//in %
Z2=0.01+%i*0.05;//in ohm

//calculations
S=Sfl/100;//slip
R2=real(Z2);//in ohm
X2=imag(Z2);//in ohm
Sm=R2/X2;//slip at max speed
Ns=120*f/P;//in rpm
Nm=(1-Sm)*Ns;//in rpm
TmaxByTfl=(S^2+Sm^2)/2/S/Sm;//ratio
disp("Maximum Torque is "+string(TmaxByTfl)+" times of full load torque.");
