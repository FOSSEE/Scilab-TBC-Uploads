clc
//Initialization of variables
P=600*1000 //N/m^2
T=25//C
M=71 //Kg
//Calculations
R=8312/M
d=P/(R*(273+T))
Gamma=d*9.81
v=1/d
printf('Density of chlorine = %.1f kg/m^3',d)
printf('\n Specific weight of chlorine = %d N/m^3',Gamma+1)
printf('\n Specific volume of chlorine = %.3f m^3/Kg',v)
