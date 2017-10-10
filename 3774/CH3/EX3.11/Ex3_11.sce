// exa 3.11 Pg 72

clc;clear;close;

// Given Data
N=200;// rpm
P=25;// kW
tau_d=42;// MPa
W=900;// N
L=3;// m
Syt=56;// MPa
Syc=56;// MPa
sigma_d=56;// MPa

T=P*60*10**3/(2*%pi*N);// N.m
M=W*L/4;// N.m
Te=sqrt(M**2+T**2);// N.m
// Te=(%pi/16)*d**3*tau_d
d=(Te*10**3/((%pi/16)*tau_d))**(1/3);// mm
printf('\n shaft diameter(using equivalent torque)-\n d=%.f mm.',d)

Me=(1/2)*(M+sqrt(M**2+T**2));//N.m
// Me=(%pi/32)*d**3*sigma_d
d=(Me*10**3/((%pi/32)*sigma_d))**(1/3);// mm
printf('\n shaft diameter(using equivalent bending moment)-\n d=%.f mm.',d)
printf('\n adopt d=57 mm.')
