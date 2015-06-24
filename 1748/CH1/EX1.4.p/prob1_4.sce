// Prob 1.4
clc;
clear;
close;
format('v',7);
// Given data
s=36;//no. of slots
p=4;//no. of poles
ph=3;//no. of phase
CoilSpan=8;//short pitch winding
alfa=180/(s/p);//slot pitch in degree
m=s/(p*ph);//no. of slots per pole per phase
Kd=sind(m*alfa/2)/(m*sind(alfa/2));//distribution factor
disp(Kd,"Distribution factor : ");
CoilSpan1=s/p;//coil span for full pitch winding
slots_sp=CoilSpan1-CoilSpan;//slots by which coil is short pitched
Beta=slots_sp*alfa;//angle by which coil is short pitched
Kc=cosd(Beta/2);//Pitch factor
disp(Kc,"Pitch factor : ");
