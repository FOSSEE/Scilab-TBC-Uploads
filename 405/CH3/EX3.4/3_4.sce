clear;
clc;
printf("\t\t\tExample Number 3.4\n\n\n");
// buried parallel disk
// illustration3.4
// solution

d = 0.50;// [m] diameter of both disk
r = d/2;// [m] radius of disk
Td1 = 80;// [degree celsius] first disk temperature
Td2 = 20;// [degree celsius] second disk temperature
k = 2.3;// [W/m per degree celsius] thermal conductivity of medium 
D = 1.5;// [m] seperation of disk in a infinite medium
// We have to calculate shape factor using relation given in table (3-1) 
// We select the relation for the shape factor is for the case D>5*r
S = (4*%pi*r)/((%pi/2)-atan(r/D));// [m] shape factor
q = k*S*(Td1-Td2);// [W]
printf("heat transfer between the disks is %f W",q);

