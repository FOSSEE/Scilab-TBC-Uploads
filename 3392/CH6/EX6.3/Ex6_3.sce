clc
// initialization of variables
clear
tau_Y=190 //MPa
G=27 //GPa
L=2 //m
Do=60 //mm
Di=40 //mm
SF=2 // Factor of safety
// Angle of twist can't be greater than 0.2 rad
thM=0.2 //rad
Do=Do*10^-3
Di=Di*10^-3
G=G*10^9
tau_Y=tau_Y*10^6
J=%pi/2*((Do/2)^4-(Di/2)^4)
T=tau_Y*J*2/(Do*SF)
printf(' part (a)')
printf('\n Design torque T = %.3f kN.m',T/10^3)

// part (b)
T=G*J*thM/SF
printf('\n part (a)')
printf('\n Design torque limited by angle of twist is T = %.3f kN.m',T/10^3)
