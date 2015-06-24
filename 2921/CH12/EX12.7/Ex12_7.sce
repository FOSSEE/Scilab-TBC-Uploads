clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-12.7 Page No.270\n');

Su=95*10^3;
Sn=0.5*Su;
Np=24;
Pd=16;
Dp=Np/Pd;

//Torque
n=3450;
P=3;
T=P*63000/n;

mprintf('\n Torque = %f in-lb.',T);

//Force transmitted
Ft=2*T/Dp;

mprintf('\n Force transmitted = %f lb.',Ft);

//Surface speed
Vm=%pi*Dp*n/12;

mprintf('\n Surface speed = %f ft/min.',Vm);

//Force allowable
Y=0.337;
b=1;
Fs=Sn*b*Y/Pd;

mprintf('\n Force allowable = %f lb.',Fs);

//Dynamic load using Buckingham's equation
C=830;
Fd=Ft+0.05*Vm*(b*C+Ft)/(0.05*Vm+(b*C+Ft)^0.5);

Nsf=1.4;
if (Fs/Nsf)>Fd then
    mprintf('\n This is a suitable design');
end
