//Velocity of light in diamond

clear;
clc;

printf("\tExample 21.2\n");

er=5.5;                   //Relative permitivity
xm=-2.17D-5;              //Magnetic Suseptibility

eo=8.85D-12;              //Permitivity in free space
uo=4*%pi*10^-7;           //Permeability

e=er*eo;
u=uo*(1+xm);

v=1/sqrt(u*e);

printf("\nVelocity in diamond is %.2e m/s\n",v);

//End