// given data
clear 
clc

u0=20.0 // wind speed in m/s
T=273+27.0 // temp in kelvin
P=1.01325e5 // pressure in Pa
R=287.0 // gas constant
r=80/2.0 // radius of rotor in m
w=2*%pi*40/60.0 // rotor speed in rad/s
A=%pi*r**2 // area of rotor in m^2

// soln:
rho=P/(R*T) // density in Kg/m^3
a=1/3.0 // condition for maximum output
Cpmax=4*a*(1-a)**2 // Power Coefficient
Lambda=r*w/u0 //tip speed ratio

Po=(A*rho*u0**3)/2000000 // Total Power in Wind in W

Tm=Po*r/u0 // Torque in N

Ctmax=Cpmax/Lambda // torque coefficient 

Tshmax=Tm*Ctmax // torque at shaft

printf("The torque at shaft for maximum output is %0.2f N",Tshmax)
