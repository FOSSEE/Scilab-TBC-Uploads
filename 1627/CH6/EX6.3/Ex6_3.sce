clc
//initialisation of variables
v=5*10^-2//m^2/s
r=1900*10^-3//m
t=1/60//min/s
v1=5*10^-6//m^2/s
e=0.00028//m
d=0.05//m
k=3.6//v
f=0.122//m
//CALCULATIONS
V=4*(r)*t/((%pi)*(v)^2)//m/s
Nr=(V*v)/(v1)
R=e/d
Le=v*(k/f)//m
//RESULTS
printf('The equivalent lenght of straight pipe is=% f m',Le)
