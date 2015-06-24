clc
//initialisation
p0=0.76*13600*9.81
m=1.785*10^-4//kg
v0=0.001/m
T0=273//k
g=1.67
cp=1250
//CALCULATIONS
r=p0*v0/T0
J=r*g/((g-1)*cp)
//results
printf(' mechanical equivalent of heat= % 1f joules/cal',J)
