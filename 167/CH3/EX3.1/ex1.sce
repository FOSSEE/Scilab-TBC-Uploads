//ex1
//Pressure of Saturated Liquid in a Tank
clc
Psat=70.183;//saturated pressure @90C using steam table A-4 in kPa
printf('From steam table Psat @ 90 C = %.3f kPa',Psat);
vsat=0.001036;//saturated specific volume @90C in m^3/Kg
m=50;//mass in kg
V=m*vsat;//Volume of tank in m^3
printf('\n Total Volume of Tank = %.4f m^3',V);
