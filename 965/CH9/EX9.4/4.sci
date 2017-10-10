clc;
clear all;
disp("temperature at the bottom")
m=25/3600;//kg/s
d=0.28;// m diameter of copper pan
tsat=100;// degree C
rhol=958.4;// kg/m^3
rhov=0.5955;// kg/m^3
cpl=4220;//J/kg.K
mul=279*10^(-6);//Pa.s
Prl=1.75;
hfg=2257*1000;// J/kg
s=58.9*10^(-3);// N/m
n=1;// for water
A=%pi*d^2/4;// m^2
qs=m*hfg/A;// W/m^2
csl=0.013;
te=(qs/(mul*hfg)*(s/(g*(rhol-rhov)))^0.5)^0.333*(csl*hfg*Prl/cpl);
ts=tsat+te;
disp("degree C",ts,"The temperature of the bottom surface of the plan")
