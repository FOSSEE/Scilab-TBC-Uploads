clc;clear;
//Example 5.13

//given data
W=4000*10^-10;//wavelength in m
Vs=0.4;//retarding potential in eV
h=6.625*10^-34;//Plank's constant
c=3*10^8;//speed of light in m/s
e=1.6*10^-19;//the charge on electron in C

//calculations
f=c/W;
disp(f,'The light frequency in Hz');
E=h*f/e;
disp(E,'The photon energy in eV');
Wo=E-Vs;
disp(Wo,'The work function in eV');
fo=Wo/h*e;
disp(fo,'The threshold frequency in Hz');
NE=(E-Wo)*e;
disp(NE,'The net energy in J')