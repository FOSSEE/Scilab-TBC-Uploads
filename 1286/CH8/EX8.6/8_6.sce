clc
//initialisation of variables
t0=273//k
d0=1.29//kg/m^3
p=0.75//m
t=273+17//k
p0=0.76//m
v=342.15//m/sec
//CALCULATIONS
d=t0*d0*p/(t*p0)
g=(v*v*d)/(p*13600*9.81)
//results
printf(' \n gamma value= % 1f ',g)
