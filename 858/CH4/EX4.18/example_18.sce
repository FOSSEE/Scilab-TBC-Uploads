clc
clear 
printf("example 4.18 page number 154\n\n")

//to find pressure drop per unit length

b=0.050    //in m
a=0.025    //in m
d_eq=b-a  //in m
density=1000  //in kg/m3
u=3    //in m/s
viscosity = 0.001

Re=d_eq*u*density/viscosity;

e=40*10^6   //in m
f=0.0062;
P_perunit_length=2*f*density*u^2/d_eq;   //in Pa/m

printf("pressure per unit length = %f Pa/m",P_perunit_length)
