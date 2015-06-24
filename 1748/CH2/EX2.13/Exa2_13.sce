//Exa 2.13
clc;
clear;
close;
//Given data : 
P=4;//no. of poles
f=50;//in Hz
R2=0.03;//in ohm
X2=0.12;//im ohm
Smax=R2/X2;//unitless
Ns=120*f/P;//in rpm
N=Ns*(1-Smax);//in rpm
disp(N,"Speed corresponding to maximum torque(in rpm) :");
disp("Let r be the external resistance introduced per phase in the rotor circuit. Ratio of rotor circuit resistance to rotor standstill resistance=alfa ");
//alfa=(R2+r)/X2
//Ratio of starting torque to max torque=75/100=2*alfa/(alfa^2+1)
//It gives : 3*alfa^2-8*alfa+3=0
//coefficients :
a=3;b=-8;c=3;
alfa1=(-b+sqrt(b^2-4*a*c))/(2*a);alfa2=(-b-sqrt(b^2-4*a*c))/(2*a);
disp("rejecting higher values, alfa = "+string(alfa2));
fdash=1.5;//in Hz
r=alfa2*X2-R2;//in ohm;
disp(r,"External rotor resistance per phase(in ohm) : ");