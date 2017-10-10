clc
//initialisation of variables
c=0.005//cm
v=2*10^-1/2//N.s/m^2
l=7.5//cm
mu=2*10^-2//N.s/m^2
d=5*10^-2//m
N=1500*(1/60)//rev/s
L=7.5*10^-2//m
//CALCULATIONS
F=(2*(mu)*(%pi)^2*(d)^2*N*L)/(c*10^-2)//N
HP=(F*(%pi)*d*N)/746//hp
//RESULTS
printf('The friction horsepower loss is=% f hp',HP)
