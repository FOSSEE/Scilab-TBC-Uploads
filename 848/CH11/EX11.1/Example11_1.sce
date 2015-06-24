//clear//
//Caption:Program to calculate Photon density
//Example11.1
//page 397
clear;
clc;
close;
Vg = 2e08; //group velocity in m/s
h = 6.625e-34; //planks constant
C = 3e08; //free space velocity in m/s
Lamda = 1550e-09;//operating wavelength
V = C/Lamda; //frequency in Hz
w = 5e-06; //width of optical amplifier in meters
d = 0.5e-06; //thickness of optical amplifier in meters
Ps = 1e-06; //optical signal of power
Nph = Ps/(Vg*h*V*w*d);
disp(Nph,'The photon density in photons/cubic meter is Nph = ')
//Result
//The photon density in photons/cubic meter is Nph = 1.560D+16  
