//Finding resistance
//Example 15.14(pg. 400)
clc
clear
R1=0.12//old conductor resistance in ohm
d1=15//diameter of old conductor in cm
d2=0.4*d1//diameter of new conductor in cm
a1=%pi*(d1^2)/4//area of cross section of old conductor
a2=%pi*(d2^2)/4//area of cross section of new conductor
//R=rho*l/a=rho*V/a^2
//Henec R is proportional to 1/a^2
R2=R1*((a1/a2)^2)//resistance of new conductor
printf('Thus resistance of new conductor is %2.4f ohm',R2)
