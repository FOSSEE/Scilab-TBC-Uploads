//Exa 6.9
clc;
clear;
close;
// given :
E_rms=10 // electric field in mV/m
E_rms=10*10^-3 // electric field in V/m
f=2 // frequency in MHz
f=2*10^6 // frequency in Hz
N=10 // number of turns
phi=0 // angle between the plane of loop and direction of incident wave in Degrees
S=1.4 // area of loop antenna in m^2
c=3*10^8 // speed of light in m/s
lambda=c/f // wavelength in m
E_max=sqrt(2)*E_rms // electric field in V/m
V_rms=(2*%pi*E_max*S*N/lambda)*cosd(phi) // induced voltage
disp(V_rms*1000,"induced voltage in mV:")
