clc
//Initialization of variables
g=9.81 //m/s^2
rho=1200 //kg/m^3
mu=0.005 //Ns/m^2
d=0.006 //m
Re=2000
V=0.15 //m/s
//calculations
Vc=Re*mu/(d*rho)
Vr=V/Vc
T0=8*mu*V/d
//results
printf("Shear stress = %d N/m^2",T0)
