clc
clear 
printf("example 4.15 page number 152\n\n")

//to find the level difference

Q=0.8*10^-3;   //in m3/s
d=0.026    //in m
A=(3.14*(d^2))/4   //in m2

u=Q/A;    //in m/s
density=800    //in kg/m3
viscosity=0.0005   //in Pa-s

Re=(u*density*d)/viscosity;
f=0.079*(Re)^-0.25;
L=60
h_f=2*f*((u^2)/9.8)*(L/d);

printf("level difference = %f m",h_f)
