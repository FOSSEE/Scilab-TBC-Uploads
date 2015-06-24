//Part A Chapter 7 Example 15
clc;
clear;
close;
d=20/100;//m
h=2;//cm
T=150;//degree C
F=10;//kN
Q=600;//kJ
Patm=101.3;//kPa
P=F/(%pi/4*d^2)+Patm;//kPa
V1=%pi/4*d^2*h/100;//m^3
m=V1*1000;//kg
hf=612.1;//kJ/kg(at Pressure P)
hfg=2128.7;//kJ/kg(at Pressure P)
h2=1582.8;//kJ/kg
x=(Q/m+4.18*T-hf)/hfg;//dryness factor
disp("Dryness fraction of steam produced is "+string(x));
U1=m*4.18*T-P*V1;//kJ
vg=0.4435;//m^3/kg at Pressure P
V2=m*x*vg;//m^3
U2=m*h2-P*V2;//kJ
U21=U2-U1;//kJ(U2-U1)
disp("Change in internal energy is "+string(U21)+" kJ.");
W=P*(V2-V1);//kJ
disp("Workdone is "+string(W)+" kJ.");
