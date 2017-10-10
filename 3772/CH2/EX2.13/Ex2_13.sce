// Problem no.2.13,Page no.38


clc;clear;
close;

d=90 //cm //Diameter of grindstone
t=10 //cm //thickness of grindstone
rho=0.0026 //Kg/cm**3 //Density

//calculations

//M=Mass of grindstone=Volume *Density=Area*Thickness*Density
M=%pi*4**-1*d**2*t*rho //Kg 
R=d*2**-1 //cm //radius
I_g=M*R**2*2**-1 //Kg*m**2

k=R*(2**0.5)**-1 //cm //Radius of gyration

//Result
printf("Radius of gyration is %.2f cm",k)
