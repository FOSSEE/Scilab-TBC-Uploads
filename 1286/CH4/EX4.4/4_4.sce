clc
//initialisation of variables
d=2*10^-3//m
x=0.07//m
m1=2.2*10^-3//gm
pice=920//kgm^-3
pwater=1000//kgm^-3
lice=80000//cal/kg
//CALCULATIONS
a=22*d*d/(4*7)
v=x*a
v1=1/pice
v2=1/pwater
dv=v1-v2
m2=v/dv
h=lice*m2
L=h/m1
printf(' latent heat of vapourisation= % 2f cal/kg',L)
