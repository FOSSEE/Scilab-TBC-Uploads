clc
//initialization of new variables
clear
A1=30 //cm^2  Area at station 1
u1=1 //m/s    Velocity at station 1
A3=20 //cm^2  Area at station 3
u3=1.2 //m/s   Velocity at Station 3
A2=20 //cm^2    Area at station 2
rho=1000 //kg/m^3  density
// Calculations
// m stands for mass flow rate which is conserved
m1=rho*u1*A1*10^-4
m3=rho*u3*A3*10^-4
m2=m1-m3
u2=m2/(rho*A2*10^-4)
//result
printf('Mass flow rate entering station 1 is %.1f kg/s',m1)
printf('\n Mass flow rate entering station 2 is %.1f kg/s',m2)
printf('\n The average velocity leaving at station 2 is %.1f m/s ',u2)
