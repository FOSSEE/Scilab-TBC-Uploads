clc
//initialisation of variables
r= 1.333
d= 0.9982 //g cm^-3
m= 18.02 //gm
Pm= 74.22 //cc
k= 8.314*10^7 
N= 6.023*10^23
T= 293 //k
//CALCULATIONS
Rm= ((r^2-1)/(r^2+2))*m/d
u= sqrt(9*k*T*(Pm-Rm)/(4*%pi*N^2))
//RESULTS
printf (' dipole moment of water = %.2e e.s.u ',u)
