clc
//initialization of new variables
clear
sigma=2.5*10^-2 //N/m
D=10 //cm
//calculations
R=D/2
dP=2*sigma/(R*10^-2)
//result
printf('The pressure difference is = %.1f N/m^2',dP)
