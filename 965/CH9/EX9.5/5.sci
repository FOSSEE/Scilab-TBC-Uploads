clc;
clear all;
disp("Power of burner")
d=0.35;// diameter of pan
ts=115;// degree C
rhol=958.4;// kg/m^3
rhov=0.5955;// kg/m^3
cpl=4220;// J/kg.K
mul=279*10^(-6);// Ns/m^2
Prl=1.75;
hfg=2257*10^3;// J/kg
s=58.9*10^(-3);// N/m
te=15;// degree C excess temperature
g=9.81;//m/s^2
n=1;
csl=0.013;
qs=mul*hfg*(g*(rhol-rhov)/s)^0.5*(cpl*te/(csl*hfg*Prl^n))^3// W/m^2
Q=qs*%pi*d^2/4;//
disp("W",Q,"Power of burner to maintain boiling =")
mw=Q/hfg*3600;// kg/hr
disp("kg/hr",mw,"Rate of evaporation =")
qsc=0.18*(rhov)^0.5*hfg*(g*s*(rhol-rhov))^0.25;// W/m^2
disp("W/m^2",qsc,"Critical heat flux =")


