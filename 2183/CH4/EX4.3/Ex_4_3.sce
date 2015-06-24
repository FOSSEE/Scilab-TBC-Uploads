// Example 4.3:Optical Powers
clc;
clear;
close;
h=1.5;//Wavelength in micro meter
d=6;//Core diameter in micro meter
v=600;//frequency in Mega Hertz
alpha=0.4;//Attenuation in dB/km
Pb=(4.4*10^-3*d^2*h^2*alpha*v*10^-3)*10^3;//Threshold optical power for brillouin scattering in milli Watt
Pr=(5.9*10^-2*d^2*alpha*h);//Threshold optical power for Raman scattering in Watt
disp(Pb,"Threshold optical power for Brillouin scattering in milli Watt")
disp(Pr,"Threshold optical power for Raman scattering in Watt")
//Pb is calculated wrong in the text book
