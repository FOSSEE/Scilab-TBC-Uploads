//Part A Chapter 7 Example 5
clc;
clear;
close;
V=0.5;//m^3
T=100+273.15;//K
v2=0.003155;//m^3/kg(at critical state)
v1=v2;//constant volume process
vf=0.001044;//m^3/kg(at 100 degree C)
vg=1.6729;//m^3/kg(at 100 degree C)
x1=(v1-vf)/vg;//dryness fraction
m=V/v2;//kg
mw=m*(1-x1);//kg
Vw=mw*vf;//m^3
disp("Mass of water is "+string(mw)+" kg.");
disp("Volume of water is "+string(Vw)+" m^3.");
