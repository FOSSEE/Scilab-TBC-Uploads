//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.8w
//calculation of the amplitude of vibration of the particles of the air

//given data
I=2*10^-6//intensity(in W/m^2) of the sound wave
nu=1*10^3//frequency(in Hz) of the sound wave
rho0=1.2//density(in kg/m^3) of the air
v=330//speed(in m/s) of the sound in the air

//calculation
s0=sqrt(I/(2*%pi^2*nu^2*rho0*v))//equation of displacement amplitide

printf('the amplitude of vibration of the particles of the air is %3.1e m',s0)
