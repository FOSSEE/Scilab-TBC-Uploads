clc();
clear;
//To determine the free volume per unit cell
r=2.3;                                 //atomic radius
a=(4*r)/sqrt(3);
fv=((a)^3-(2*(4/3)*%pi*r^3))*10^-30   //free volume in m^3
printf("The free volume per unit cell is %e m^3",fv);
