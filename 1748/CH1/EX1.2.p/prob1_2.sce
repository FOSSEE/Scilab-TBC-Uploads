// Prob 1.2
clc;
clear;
close;
format('v',5);
// Given data
s=24;//no. of slots
p=4;//no. of poles
ph=3;//no. of phase
s1=s/p;//no. of slots pe pole
alfa=180/s1;//slot angle in degree
m=s1/ph;//no. of slots per pole per phase
Kd=sind(m*alfa/2)/(m*sind(alfa/2));//distribution factor
disp(Kd,"Distribution factor : ");
Beta=alfa;//short pitched angle in degree
Kc=cosd(Beta/2);//coil span factor
disp(Kc,"Pitch factor : ");
