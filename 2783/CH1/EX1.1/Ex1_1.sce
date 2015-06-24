clc
//initialization of new variables
clear
M=29 // Molecular weight of air
R=8314.3 // J/mol K  Gas constant
T=300 //K  Temperature
P=1 //kg/cm^2  Pressure
g=9.8 //m/s^2  Acceleration due to gravity
//calculations
R=R/M
P=P*g*10^4
rho=P/(R*T)
//result
printf(' Density = %.3f kg/m^3 ',rho)
