//Exa 3.4
clc;
clear;
close;
//Given Data :
format('v',4);
L=160;//in meter
d=0.95;//in cm
A=%pi*d^2/4;//in cm^2(cross sectional area)
US=4250;//in Kg/cm^2(ultimate strength)
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
//Note : Answer in the book is not accurate.