//Exa4.4
clc;
clear;
close;
//given data
T=300;//in Kelvin
ND=10^15;//in cm^-3
NA=10^18;//in cm^-3
ni=1.5*10^10;//in cm^-3
VT=T/11600;//in Volts
Vbi=VT*log(NA*ND/ni^2);//in Volts
disp(Vbi,"Built in potential barrier in volts : ");