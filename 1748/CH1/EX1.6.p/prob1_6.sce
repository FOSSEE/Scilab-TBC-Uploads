// Prob 1.6
clc;
clear;
close;
format('v',7);
// Given data
ph=3;//no. of phase
P=4;//no. of poles
s=36;//no. of slots
coilspan=8;//short pitch winding
alfa=180/(s/P);//slot pitch in degree
m=s/P/ph;//no. of slots per pole per phase
Kd=sind(m*alfa/2)/(m*sind(alfa/2));//distribution factor
disp(Kd,"Distribution factor : ");
coilspan1=s/P;//coil span for full pitch winding
s1=coilspan1-coilspan;//no. of slots by which the coil is short pitched
Beta=s1*alfa;//angle by which the coil is short pitched in degree
Kc=cosd(Beta/2);//pitch factor
disp(Kc,"Pitch factor : ");
