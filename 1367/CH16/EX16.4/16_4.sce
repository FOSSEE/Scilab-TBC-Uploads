//Find electron and current density
//Ex:16.4
clc;
clear;
close;
p=11.4*10^3;//in kg/m^3
aw=207.2;//in kg/kg-mol
v=1200;//in m/s
na=60.23*10^26;//avagadro's no
e=1.6*10^-19;//charge in C
m=9.1*10^-31;//mass of electron in kg
mo=4*3.14*10^-7;//in H/m
ne=2*p*na/aw;//in per m^3
disp(ne,"Electron density (in per m^3) = ");
ied=ne*e*v;//in A/m^2
disp(ied,"Current density (in A/m^2) = ");
dp=(m/(mo*ne*(e^2)))^(1/2);
dp1=dp*10^10;
disp(dp1,"Depth of penetration (in angstorm) = ");
