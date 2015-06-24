clc 
//Initialization of variables
r=0.75 //m
gam=8 //kN/m^3
//calculations
hp=3*%pi*r/16
P=gam*2/3 *r^3
//results
printf("Total pressure location = %.3f m",hp)
printf("\n Total pressure = %.2f kN",P)
