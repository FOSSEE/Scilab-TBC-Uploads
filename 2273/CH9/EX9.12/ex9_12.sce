//Calculate the charging current
clear;
clc;
//soltion
//given
C3=(0.4*10^-6)*5;//farad
Vph=11*10^3/sqrt(3);
f=50;//Hz
Cn=2*C3;
Ic=2*%pi*f*Vph*Cn;
printf("Charging current= %.2f A",Ic)
