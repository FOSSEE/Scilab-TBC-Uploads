clc
//initialisation of variables
u= 1.44*10^-18 //e.s.u
k= 3.8*10^-16 
T= 273 //k
N= 6.023*10^23 //molecules
v= 6 //cc
Vm= 44.8*10^3 //cc
//CALCULATIONS
Pm= v+(4*%pi*N*u^2/(3*3*k*T))
r= Pm/Vm
k= (2*r+1)/(1-r)
//RESULTS
printf (' dielectric constant = %.5f ',k)
