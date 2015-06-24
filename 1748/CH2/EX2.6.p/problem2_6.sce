//problem 2.6
clc;
clear;
close;
//given data :
format('v',6);
P=4;//No. of poles
m=3;//No. of phase
f=50;//in Hz
Eff=85;//in %
Pout=17;//useful output power in KW
StatorLosses=900;//in watts
Input=Pout/Eff*100;//in KW
TLosses=Input-Pout;//in KW
WnF_Losses=1100;//in Watts
CuLoss=TLosses*1000-StatorLosses-WnF_Losses;//in watts
RotorInput=Input-StatorLosses/1000;//in KW
S=CuLoss/1000/RotorInput;//unitless
disp(S,"Slip : ");
Ns=120*f/P;//in rpm
N=Ns-S*Ns;//in rpm
//Formula : MechPower=Omega*T=2*%pi*N/60*T;
T=RotorInput*1000/(2*%pi*N/60);//in Newton-meter
disp(T,"Torque Devloped in Nw-m : ");
Tavail=Pout*1000/(2*%pi*N/60);//in Newtons
disp(Tavail,"Torque Available(Nw-m) : ");
