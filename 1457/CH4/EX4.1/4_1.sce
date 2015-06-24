clc
//Initialization of variables
d=1.26
d=25 //in
d2=60 //cm
Q=25//cfs
Q2=700 //L/s
dout=12 //in
dout2=30/100 //m
z=3 //ft
z2=1 //m
P1=45 //psi
P2=300 //kN/m^2
gamma=9.81 //kN/m^3
//calculations
V1=d/%pi
V2=d*4/%pi
pf=(P1*144/(1.26*62.4) + (V1^2)/64.4 - V2^2 /64.4 +z)*1.26*62.4/144
V1=Q2/1000/(%pi*dout2^2)
V2=4*V1
p2f=((P2/(1.26*gamma)) + V1^2 /(2*gamma) -V2^2 /(2*gamma) +z2)*1.26*gamma

//results
printf("English units")
printf("\n Pressure at point 2 = %.1f psi ",pf)
printf("\n SI Units")
printf("\n Pressure at point 2 = %.d kN/m^2 ",p2f)
