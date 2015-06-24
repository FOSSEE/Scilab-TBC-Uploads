clc 
//Initialization of variables
w=150 //N
theta=30 //degrees
l=0.8 //m
b=0.8 //m
dy=0.12 //cm
v=20 //cm/s
//calculations
Tau=w*sind(theta) /(l*b)
rd=v/dy
vis=Tau/rd
//results
printf("Viscosity of the fluid = %.2f N s/m^2",vis)
