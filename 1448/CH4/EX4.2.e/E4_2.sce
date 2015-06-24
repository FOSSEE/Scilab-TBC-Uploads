clc
//Initialization of variables
g=9.81 //m/s^2
m=30*10^-3 //kg
d=10 //m
H=2.828*10^6 //j/mol
M=180 //g/mol
//calculations
w=g*m*d
n=w/H
m=n*M
//results
printf('Amount bird must consume = %.1e g',m)
