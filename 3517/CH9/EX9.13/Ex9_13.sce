//Caption:Calculate output maximum and minimum frequencies
//Ex9.13
clc;
clear;
close;
V=15//Supply voltage(in volts)
Imin=10//Minimum current(in micro ampere)
Imax=1//Maximum current(in mA)
C=3600//Capacitor(in pF)
Rmax=V/(10*Imin)
Rmin=V/(10*Imax)
fmin=0.15*10^6/(C*Rmax)
fmax=0.15*10^6/(C*Rmin)
disp(fmin,fmax,'Maximum frequency(in khz) and minimum frequency(in hz)=')