clc
clear 
printf("example 4.16 page number 153\n\n")

//to find the engery cost
delta_z=50;    //in m
L=290.36    //in m
d=0.18    //in m
Q=0.05    //in m3/s

A=(3.14*d^2)/4;    //in m2
u=Q/A;    //in m/s
density=1180;   //in kg/m3
viscosity=0.0012   //in Pa-s
Re=u*density*d/viscosity;

f=0.004;
sigma_F=2*f*u^2*L/d;
ws=((9.8*50)+sigma_F)/0.6;
mass_flow_rate=Q*density;    //in Kg/s
power=mass_flow_rate*ws/1000;   //in KW
energy_cost=power*24*0.8;

printf("Energy cost = Rs %f",energy_cost)
