//problem 2.10
clc;
clear;
close;
//given data :
format('v',6);
P=4;//No. of poles
m=3;//No. of phase
f=50;//in Hz
Tmax=162.8;//in Nw-m
R2=0.2;//in ohm per phase
Speed=1365;//in rpm
Ns=120*f/P;//in rpm
S=(Ns-Speed)/Ns;//unitless
//Max. Torque condition : S=R2/X2
X2=R2/S;//in ohm/phase
disp("Tstarting=k*E2^2*R2/(R2^2+X2^2)=Tmax/2");
disp("and Tmax=k*E2^2/(2*X2^2)");
disp("This two eqn gives a polynomoial p for R2.");
p=[Tmax/2 -Tmax*2*X2 Tmax/2*X2^2];
R2=roots(p);
disp("Additional resistance is "+string(R2(1))+" ohm or "+string(R2(2))+" ohm");
disp("Higher value should be neglected. So answer is "+string(R2(2))+" ohm.");
