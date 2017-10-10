// exa 3.8 Pg 70

clc;clear;close;

// Given Data
M=15;// N.m
P=5;// kW
N=500;// rpm
tau_d=40;// Mpa
sigma_d=58;// MPa

T=P*60*10**3/(2*%pi*N);// N.m
Te=sqrt(M**2+T**2);// N.m
//Te=(%pi/16)*d**3*tau_d
d=(Te/((%pi/16)*tau_d)*1000)**(1/3);// mm
printf('\n Using equivalent torque equation,\n shaft diameter d = %.f mm',d)

Me=(1/2)*(M+sqrt(M**2+T**2));// N.m
//Me=(%pi/32)*d**3*sigma_d
d=(Me/((%pi/32)*sigma_d)*10**3)**(1/3);//mm
printf('\n Using equivalent bending moment equation,\n shaft diameter d = %.2f mm or %.f mm',d, ceil(d))
printf('\n Adopt d=23 mm.')
