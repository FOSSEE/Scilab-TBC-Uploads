clc
//initialization of new variables
clear
u=20 //km/h
Cd=0.15
S=4 //m^2
r=1025 //kg/m^3
//calculations
D=Cd*1/2*r*(u/3.6)^2*(S)
P=D*u/3.6
//results
printf('Drag force = %d N',D)
printf('\n Power = %.2f KW',P/1000)
