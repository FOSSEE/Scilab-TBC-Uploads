//Determine critical discruptive voltage for line
clear;
clc;
//soltion
//given
d=2*100;//cm
r=1.2;//cm
go=30/sqrt(2);//kV/cm.... Dielectric strength of air
mo=0.96;//Irregularity factor
b=72.2;//barometric pressure
t=20;//temperature
del=3.92*b/(273+t);//air density factor
Vdo=mo*go*del*r*log(d/r);
Vl=sqrt(3)*Vdo;
printf("Line voltage (R.M.S)= %.2f kV",Vl);
//In book its 208 kV because of rounding of floating points
