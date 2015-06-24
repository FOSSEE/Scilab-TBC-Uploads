clc
//initialization of new variables
clear
u=25 //km/h
t=1 //h
S=0.36 //m^2
Cd=0.88
r=1.2 //kg/m^3
//calculations
D=Cd*1/2*r*(u/3.6)^2*(S)
P=D*u/3.6
E=P*t*3600
//results
printf('Drag force = %.2f N',D)
printf('\n Power = %.2f W',P)
printf('\n Energy spent is %.1f KJ',E/1000)

