// Example 4.9:Attenuation 
clc;
clear;
close;
Pb=150;//Threshold optical power for brillouin scattering in milli watt
Pr=1.5;//Threshold optical power for Raman scattering in watt
d=8;//Core diameter in micro meter
v=1;//frequency in Giga Hertz
h=(5.9*10^-2*d^2*Pb*10^-3)/((4.4*10^-3*d^2*Pr));
alpha=(Pb*10^-3)/((4.4*10^-3*d^2*h^2));// Attenuation in db/Km
disp(alpha,"Loss in dB/Km")
