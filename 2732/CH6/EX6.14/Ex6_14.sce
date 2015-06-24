clc
//initialization of variables
clear
D=10 //cm
d= 1 //cm
n=20
P=60 //kg
G=8*10^5 //kg/cm^2
//calculations
n=n-0.75*2
delta=P*n*%pi*D^3*32/(4*%pi*G)
// results
printf('The deflection is %.1f cm',delta)

