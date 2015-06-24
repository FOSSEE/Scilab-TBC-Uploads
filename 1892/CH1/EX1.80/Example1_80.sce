// Example  1.80

clc;clear;close;

// Given data
format('v',6);
P=6;//no. of poles
f=50;//in Hz
N=940;//in rpm
Output=7;//in KW
Nm=800;//in rpm
TotalLaser=840;//in watts

//calculations
Ns=120*f/P;//in rpm 
S=(Ns-N)/Ns;//slip
Sm=(Ns-Nm)/Ns;//slip at max Torque
Pmd=Output*1000+TotalLaser;//in watts
//Formula : Pmd=2*%pi*N*Td/60
Tdfl=Pmd/2/%pi/N*60;//in N-m
Tst=Tdfl*(S^2+Sm^2)/S/(1+Sm^2);//in N-m
disp(Tst,"Starting tiorque in N-m : ");
