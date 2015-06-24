//Calculate the charging current
clear;
clc;
//soltion
//given
C1=14*10^-6;//farad
C2=8*10^-6;//farad
Ce=C1/3;
Cc=(C2-Ce)/2;
Vph=66*10^3/sqrt(3);
f=50;//Hz
Cn=Ce+3*Cc;
Ic=2*%pi*f*Vph*Cn;
printf("Charging current= %.2f A",Ic);
//In book it is 115.82 A due to some printing mistake 
