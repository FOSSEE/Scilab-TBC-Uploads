clc
//initialisation of variables
r=2000*10^-3//liters/min
s=0.85
d=10*10^-2//cm
d1=3*10^-2//m
p=6.5//MPa
g=9.8//ft
a=1.02*10^-4//m^3/N
p1=780.92//m
b=6.5*10^6//N/m^2
//CALCULATIONS
V1=(4*(r)*(1/60))/(%pi)*(d)^2//m/s
V2=(4*(r)*(1/60))/((%pi/(d1)^2))//m/s
P1=((a*b)/s)+((V1)/(2*g))+(V1/(2*g))
P2=sqrt((V2)/(2*g))/((a/s))/2//MPa
//RESULTS
printf('The work is done or energy dissipated from the system is=% f MPa',P2)
