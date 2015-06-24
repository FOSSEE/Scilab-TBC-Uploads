// To Determine the average rate of rise of restriking voltage
clear 
clc;
Vm=132*sqrt(2)/sqrt(3);
K1=.9;
K2=1.5
K=K1*K2;
sinq=.92;
Vr=K*Vm*sinq;
fn=16*(10^3);
RRRV=2*Vr*(10^-6)*fn*2;
mprintf("average rate of rise of restriking voltage,RRRV=%.3f kV/micro-sec\n",RRRV);
