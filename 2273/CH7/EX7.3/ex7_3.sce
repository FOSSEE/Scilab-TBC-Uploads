//Determine critical discruptive voltage for line
clear;
clc;
//soltion
//given
d=2*100;//cm
r=0.5;//cm
go=30/sqrt(2);//kV/cm.... Dielectric strength of air
mo=0.8;//Irregularity factor
del=0.95//air density factor
Vdo=mo*go*del*r*log(d/r);
Vl=sqrt(3)*Vdo;
printf("Line voltage (R.M.S)= %.2f kV",Vl);
