clc ;
clear ;
m=0.1 // mass in kg
K=100 //spring constant in N/m
c=1 //resistive force in Nsm^-1
F0=2 //force in N
omega=50 //frequency in rad/s

//calculation

omega_n=sqrt(K/m) //in rad/s
r=omega/omega_n 
delta_st=F0/K //in m
damp_ratio=c/(2*m*omega_n)
A=delta_st/(sqrt((1-r^2)^2+(2*r*damp_ratio)^2))
tan_phi=(2*r*damp_ratio)/(1-r^2) //in degree
phi=180+atand(tan_phi) //converting degree to postive form

mprintf("Amplitude of oscillation = %1.2e m\n",A)
mprintf("Phase relative to the applied force is = %1.1f degree",phi) 
//The answers vary due to round of errors
