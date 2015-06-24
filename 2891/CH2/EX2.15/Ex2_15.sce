// Exa 2.15
clc;
clear;
close;
// given : H(z,t)=48*cos(10^8*t+40*z)ay // equation of magnetic field 
A=48 // amplitude of the magnetic field in A/m
omega=10^8 // angular frequency in radians/sec
f=omega/(2*%pi) // frequency in Hz
Beta=40 // phase constant in rad/m
lambda=2*%pi/Beta // wavelength in m
disp(A,"amplitude of the magnetic field in A/m:")
disp(f/10^6,"frequency in MHz:")
disp(Beta,"phase constant in rad/m:")
disp(lambda,"wavelength in m:")
