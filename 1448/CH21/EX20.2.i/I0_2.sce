clc
//Initialization of variables
h=0.1 //m
d=10^3//Kg/m^3
Patm=100021 //Pa
//Calculations
P=9.81*h*d
//Results
printf('Hydrostatic pressure(Pa) = %.3f',P )
printf('\n Pressure in apparatus(kPa) = %.3f',(Patm-P)/1000. )
