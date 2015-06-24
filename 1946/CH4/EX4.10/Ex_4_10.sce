// Example 4.10:Optical Powers
clc;
clear;
close;
h=1.5;//Wavelength in micro meters
d=6;//Core diameter in micro meter
v=0.8;//frequency in Giga Hertz
alpha=0.5;//Attenuation in dB/Km
Pb=(4.4*10^-3*d^2*h^2*alpha*v)*10^3;//Threshold optical power for brillouin scattering in milli watt
Pr=(5.9*10^-2*d^2*alpha*h);//Threshold optical power for Raman scattering in watt
disp(Pb,"Threshold optical power for brillouin scattering in milli watt")
disp(Pr,"Threshold optical power for Raman scattering in watt")
