clc
//initialisation of variables
m=0.1//kg
v=1.01*10^-4//m^3
vs=0.167404//m^3
t1=101//c
t2=99//c
p1=0.788//m
p2=0.7337//m
T=373//k
//CALCULATIONS
v1=v/m
v2=vs/m
dv=v2-v1
dt=t1-t2
dp=p1-p2
dP=dp*13600*9.81
L=dP*T*dv/(dt*4.2)
//results
printf(' \n latent heat of steam= % 1f cal/kg',L)
