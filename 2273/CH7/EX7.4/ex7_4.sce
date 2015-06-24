//Find spacing between the conductor
clear;
clc;
//soltion
//given
r=1;//cm
go=30/sqrt(2);//kV/cm.... Dielectric strength of air
mo=1;//Irregularity factor
del=1//air density factor
Vdo=220/sqrt(3);
d=exp(Vdo/(mo*go*del*r));
printf("Spacing between the conductor (d)= %.2f m",d/100)
