clc
clear 
printf("example 4.17 page number 154\n\n")

//to find the pressure loss
density=998   //in kg/m3
viscosity=0.0008  //in Pa-s
d=0.03   //in m
u=1.2   //in m/s

Re=density*d*u/viscosity;

f=0.0088;
D=1   //in m
N=10
L=3.14*D*N;
delta_P=(2*f*u^2*L)/d;   //in Pa
delta_P_coil=delta_P*(1+(3.54*(d/D)));

printf("frictional pressure drop = %f kPa",delta_P_coil)
