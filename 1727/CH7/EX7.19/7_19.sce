clc
//Initialization of variables
g=9.81
Q=0.18 //m^3/s
d3=0.3//m
f=0.032
L3=360 //m
z=25.5 //m
z2=30 //m
L2=450 //m
d2=0.45//m
L1=950 //m
d1=0.45 //m
zn=18 //m
rho=1000
//calculations
V3=Q/(%pi/4 *d3^2)
hl3=f*L3/d3 *(V3^2 /(2*g))
Z2=z+hl3
hl2=Z2-z2
V2= sqrt(2*g*d2*hl2/(f*L2))
Q2=%pi/4 *d2^2 *V2
V1=V2+ (d3/d2)^2 *V3
hl1=f*L1/d1*V1^2 /(2*g)
Hp= hl1+ Z2-zn
gam=rho*g
P=gam*Hp
//results
printf("Discharge into the reservoir = %.3f m^3/s",Q2)
printf("\n Pressure maintained by the pump = %.2f kN/m^2",P/1000)
