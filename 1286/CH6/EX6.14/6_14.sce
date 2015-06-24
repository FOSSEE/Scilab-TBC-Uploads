clc
//initialisation
m=40//kg
v=22.4//m^-3
n=2.1*10^-5
r=8314//j/mol/k
T=273//k
//CALCULATIONS
d=m/v
c=sqrt(3*r*T/m)
l=(3*n)/(d*c)
f=c/l
//results
printf(' mean freepath= % 1e m',l)
printf(' \ncollision frequency= % 1f ',f)
