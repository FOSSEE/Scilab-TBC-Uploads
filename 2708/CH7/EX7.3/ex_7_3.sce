//Example 7.3
clc;
clear;
// 1st part //wavelength of wave
f=3D11;//frequency of wave in Hz
c=3D8;// speed of light in m/s
w=c/f;// wavelength in m
disp(w,"wavelength of wave in m")
// 2nd part // amplitude of Oscillating magnetic field
Eo=50;// amplitude of electric field in V/m
Bo=Eo/c;// ocillating magnetic field in Tesla
format('e',10);Bo
disp(Bo,"approx amplitude of oscillating magnetic field in T")
