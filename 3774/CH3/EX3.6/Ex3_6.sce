// exa 3.6 Pg 69

clc;clear;close;

// Given Data
N=200;// rpm
P=200;// kW
tau_d=42;// Mpa
W=900;// N
L=3;// m
sigma_t=56;// MPa
sigma_c=56;// MPa

T=P*60*10**3/(2*%pi*N);// N.m
M=W*L/4;// N.m
Te=sqrt(M**2+T**2);// N.m
//Te=(%pi/16)*d**3*tau_d
d=(Te/((%pi/16)*tau_d)*1000)**(1/3);// mm
printf('\n Using equivalent torque equation,\n shaft diameter d = %.f mm',d)

Me=(1/2)*(M+sqrt(M**2+T**2));// N.m
//Me=(%pi/32)*d**3*sigma_d
d=(Me/((%pi/32)*sigma_c)*10**3)**(1/3);//mm
printf('\n Using equivalent bending moment equation,\n shaft diameter d = %.2f mm or %.f mm',d, ceil(d))
printf('\n Adopt d=105 mm.')
