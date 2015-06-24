// Example 3.4, page no-74
clear
clc

A=15000*10^3            //Original apogee distance
A1=25000*10^3           // Raised opogee distance
P=7000*10^3             // Perigee Distance
mu=39.8*10^13           //Nm^2/kg

A_d=A1-A
v=sqrt((2*mu/P)-(2*mu/(A+P)))
del_v=A_d*mu/(v*(A+P)^2)
printf("required Thrust velocity Delta_v = %.1f m/s",del_v)
