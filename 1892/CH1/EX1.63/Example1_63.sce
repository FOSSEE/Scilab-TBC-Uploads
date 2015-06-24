// Example  1.63

clc;clear;close;

// Given data
format('v',6);
P=12;//no. of poles
Ns=500;//in rpm
Nr=1440;//in rpm

//calculations
f1=P*Ns/120;//in Hz
Nsm=1500;//in rpm (Assumed closed synchronous speed)
S=(Nsm-Nr)/Nsm;//slip
disp(S*100,"Slip of the motor in % : ");
Pm=120*f1/Nsm;//no. of poles of the motor
disp(Pm,"No. of poles of the motor : ");
