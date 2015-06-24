//Example 1_36
clc;
clear;close;

//Given data: 
dv_by_dt=25/10^-6;//V/s
L=0.2*10^-3;//H
Vrms=230;//V
damping=0.65;//damping factor
Vm=sqrt(2)*Vrms;//V
C=1/(2*L)*[0.564*Vm/dv_by_dt]^2;//F
R=2*damping*sqrt(L/C);//ohm
disp(C,"Value of C(F)");
disp(R,"Value of R(ohm)");
