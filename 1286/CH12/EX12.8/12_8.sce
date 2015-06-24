clc
//initialisation
t1=100//c
t2=4//c
k=0.5//cal/cm s c
a=12//cm^2
l=8//cm
r=36//cal/s
//CALCULATIONS
T=(((r*l)/(k*a))+t1+t2)*0.5
//results
printf(' \n equilibrium temperature of inner surface= % 1f c',T)
