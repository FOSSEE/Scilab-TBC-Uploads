clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
l=1 //m
b=0.3 //m
Q=4.2 //m^3/s
//calculations
A=l*b
R=A/(2*(l+b))
d5=1.62/24.15
d=d5^(1/5)
Pr=2*(l+b)/(%pi*d)
//results
printf("The rectangular cross section will cost  %.2f times that of a circular cross section",Pr)
