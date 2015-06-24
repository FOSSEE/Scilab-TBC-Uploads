//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.5
//calculation of the moment of inertia of the wheel

//given data
r=10*10^-2//radius(in m) of the wheel
F=5//force(in N) of pulling
aplha=2//angular acceleration(in rad/s^2) of the wheel

//calculation
tau=F*r//net torque
I=tau/aplha//moment of inertia

printf('the moment of inertia of the wheel is %3.2f kg-m^2',I)
