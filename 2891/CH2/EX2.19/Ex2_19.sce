// Exa 2.19
clc;
clear;
close;
// given : E=5*sin(10^8*t+4*x)az // equation of electric field 
A=5 // amplitude of the electric field
omega=10^8 // angular frequency in radians/sec
f=omega/(2*%pi) // frequency in Hz
Beta=4 // phase constant in rad/m
v_0=3*10^8 // speed of light in m/s
lambda=v_0/f // wavelength in m
disp(f/10^6,"frequency in MHz:")
disp(Beta,"phase constant in rad/m:")
disp(lambda,"wavelength in m:")
