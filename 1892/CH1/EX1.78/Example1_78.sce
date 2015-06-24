// Example  1.78

clc;clear;close;

// Given data
format('v',6);
P=4;//no. of poles
f=50;//in Hz
Tmax=110;//in N-m
Nm=1360;//in rpm
R2=0.25;//in ohm
TstByTmax=1/2;//ratio

//calculations
Ns=120*f/P;//in rpm
Sm=(Ns-Nm)/Ns;//slip at max speed
X2=R2/Sm;//in ohm
//Formula : Tmax=K*E2^2/2/X2 and Tst=K*E2^2*(R2+r)/((R2+r)^2+X2^2)
//TstByTmax*RT^2+TstByTmax*X2^2-RT*2*X2=0;
P=[TstByTmax -2*X2 X2^2*TstByTmax];//polynomial for RT
RT=roots(P);//in ohm
r=RT-R2;//in ohm
r=r(2);//leaving higher value as Tmax goes with S>1 for this value
disp(r,"Resistance required in series in ohm :");
