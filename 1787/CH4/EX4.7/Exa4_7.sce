//Exa4.7
clc;
clear;
close;
//given data
T=300;//in Kelvin
ND=10^21;//in m^-3
NA=10^21;//in m^-3
ni=1.5*10^16;//in m^-3
VT=T/11600;//in Volts
Vo=VT*log(NA*ND/ni^2);//in Volts
disp(Vo,"Contact potential in volts : ");