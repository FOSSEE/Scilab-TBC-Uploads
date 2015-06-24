//Exa 2.10
clc;
clear;
close;
//given data
ni=1.5*10^10;//in cm^-3
e=1.6*10^-19;//in coulamb
MUh=450;//in cm^2/V-s
MUe=1300;//in cm^2/V-s
SIGMAi=ni*e*(MUe+MUh);//in (ohm-cm)^-1
disp(SIGMAi,"Conductivity of silicon(intrinsic) in (ohm-cm)^-1 ");
Na=10^18;//in cm^-1
SIGMAp=e*Na*MUh;//in (ohm-cm)^-1
disp(SIGMAp,"Conductivity of resulting P-type si semiconductor in (ohm-cm)^-1 : ");