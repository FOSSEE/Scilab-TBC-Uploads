
clc
clear

//INPUT
L=1.2;//Length of the satillite in m
v=0.98*3*10^8;//Speed of the satillite in m/s
c=3*10^8;//Speed of light in m s^-1

//CALCULATIONS
l=L*sqrt(1-(v^2/c^2))//The contracted length in m

//OUTPUT
mprintf('The contracted length is %3.4f m',l)
