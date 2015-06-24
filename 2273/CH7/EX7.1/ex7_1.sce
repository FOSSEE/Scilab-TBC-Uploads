//Determine line voltage for commencing of corona
clear;
clc;
//soltion
//given
d=3;//m
r=2;//cm
go=30/sqrt(2);//kV/cm.... Dielectric strength of air
Vdo=go*r*log(d*100/r);
Vl=sqrt(3)*Vdo;
printf("Line voltage for corona formation= %.2f kV",Vl);
//In book its 209.53 kV because of some typological error
