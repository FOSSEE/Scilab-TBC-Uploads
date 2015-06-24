//Exa 3.3
clc;
clear;
close;
//Given Data :
format('v',5);
L=150;//in meter
A=2;//in cm^2(cross sectional area)
US=5000;//in Kg/cm^2(ultimate strength)
g=8.9;//specific gravity
Ww=1.5;//in Kg/m(wind pressure)
SafetyFactor=5;//unitless
B_strength=2*US;//in Kg
T=B_strength/SafetyFactor;//in Kg
Volume=A*100;//in cm^2
Wc=1.78;//in Kg/m
Wr=sqrt(Wc^2+Ww^2);//in Kg
Sag=Wr*L^2/(8*T);//in meter
disp(Sag,"Sag(in m) :");