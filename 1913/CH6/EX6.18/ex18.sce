clc
clear
//Input data
L=0.3;//Thickness of the wall in m
ti=320;//Inner surface temperature in degree centigrade
to=38;//Outer surface temperature in degree centigrade
A=1;//Assume unit area in m^2

//Calculations
Q=(A/L)*((0.01256/2)*(ti^2-to^2)-(4.2/3)*10^-6*(ti^3-to^3));//Heat loss per sq metre of surface area for a furnace wall in kJ/hr/m^2

//Output
printf('The heat loss per sq metre of surface area for a furnace wall Q = %3.1f kJ/hr/m^2 ',Q)
