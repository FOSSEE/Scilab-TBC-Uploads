// Example 1.52

clear; clc; close;

format('v',5);
// Given data
P=6;//no. of poles
f=50;//in Hz
Sf=3;//in %
R2=0.2;//in ohm per phase
 
//Calculations
Sf=Sf/100;//Slip 
Ns=120*f/P;//in rpm
N1=Ns*(1-Sf);//in rpm
N2=N1*90/100;//in rpm
S2=(Ns-N2)/Ns;//new slip
//Formula : T=K*S*E2^2*R2/R2^2;//S*X2 is neglected
//Sf/R2=S2/(R2+r);  if Tfl=T20
r=(S2*R2)/Sf-R2;//Extra resistance required in ohm
disp(r,"Extra resistance necessery in series in ohm : ");
