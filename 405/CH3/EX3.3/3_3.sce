clear;
clc;
printf("\t\t\tExample Number 3.3\n\n\n");
// buried disk
// illustration3.3
// solution

d = 0.30;// [m] diameter of disk
r = d/2;// [m] radius of disk
Td = 95;// [degree celsius] disk temperature
Ts = 20;// [degree celsius] isothermal surface temperature
k = 2.1;// [W/m per degree celsius] thermal conductivity of medium 
D = 1.0;// [m] depth of disk in a semi-infinite medium
// We have to calculate shape factor using relation given in table (3-1) 
// We select the relation for the shape factor is for the case D/(2*r)>1
S = (4*%pi*r)/((%pi/2)-atan(r/(2*D)));// [m] shape factor
// heat lost by the disk is 
q = k*S*(Td-Ts);// [W]
printf("heat lost by disk is %f W",q);


 