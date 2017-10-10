clc
//initialisation of variables
h=200//m
h2=300//m
p=7.5*10^-2//cm
g=9.8//m/s^2
T=746//j/s
q=9802//N/m^3
//CALCULATIONS
V=sqrt(2*g*h)//m/s
Q=(%pi)*(p)^2*V/4//m^3/s
HP=(q*h*Q)/T//hp
E=(h/h2)*100//percent
//RESULTS
printf('The efficiency is=% f percent',E)
