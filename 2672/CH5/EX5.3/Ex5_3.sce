//Example 5_3
clc;
clear;
close;
format('v',5);
//given data : 
ND=1.2*10^21;//cm^-3
NA=10^22;//cm^-3
T=(273+30);//K
kB=1.38*10^-23;//Boltzman constant
e=1.6*10^-19;//C/electron
VT=kB*T/e*1000;//mV//Thermal Voltage
disp(VT,"Thermal Voltage(mV)")
format('v',6);
ni=1.5*10^16;//cm^-3
V0=VT/1000*log(NA*ND/ni^2);//V
disp(V0,"Barrier Voltage(V)");
///Answer in the texbook is not accurate.
