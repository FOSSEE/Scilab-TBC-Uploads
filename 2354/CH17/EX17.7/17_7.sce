//example 17.7
clc; funcprot(0);
// Initialization of Variable
m=0.25;//kg/s
cp=4178;//J/kg-K
Tmo=57;
Tmi=15;
pi=3.14;
D=0.05;//m
L=6;//m
delT=(-Tmo+Tmi)/log((100-Tmo)/(100-Tmi));
h=m*cp/pi/D/L*(Tmo-Tmi)/delT;
disp(h,"average convection coefficient in W/m^2-K");
clear()
