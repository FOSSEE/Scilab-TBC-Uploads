clc
//initialization of new variables
clear
E=2.34*10^9 //N/m^2  Modulus of Elasticity
d=1 //km    depth
rho=1000 //kg/m^3   density
g=9.8 //m/s^2    Acceleration due to gravity
//calculations
d=d*1000 
dp=rho*g*d
dVV=dp/E
//result
printf('The change in pressure is %.2e N/m^2 ',dp)
printf('\n Change in volume is %.3e ',dVV)
