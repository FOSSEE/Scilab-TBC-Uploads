clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
Cv=0.92
P=210*10^3 //Pa
d=0.05 //m
ret=1.5 //m/s^2
//calculations
H=P/(g*rho)
Va=Cv*(2*g*H)
h=Cv^2 *H
h2= Cv^2 *2*g*H/(2*(g+ret))
//results
printf("The height to which the jet will rise is %.2f m",h)
printf("\n In case 2., height = %.2f m",h2)
