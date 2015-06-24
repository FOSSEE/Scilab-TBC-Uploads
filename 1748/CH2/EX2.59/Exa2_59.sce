//Exa 2.59
clc;
clear;
close;
//Given data :
format('v',6);
f=50;//in Hz
P=4;//no. of poles
R2=0.25;//in ohm per phase
N=1440;//in rpm at full load
NewSpeed=1200;//in rpm
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//in %
NewS=(Ns-NewSpeed)/Ns;//in fraction
S1=S;S2=NewS;//slip new and old
//Torque remaining same : S1/R2=S2/(R2+R)
R=S2*R2/S1-R2;//in ohm
disp(R,"External resistance per phase(in ohm) :");
Nr=Ns-Ns*S;//in rpm
//If S1 is taken as 0.03 and S2 as 0.127
S1=0.03;//slip in fraction
S2=0.127;//slip in fraction
R=S2*R2/S1-R2;//in ohm
disp(R,"External resistance per phase(in ohm) :");