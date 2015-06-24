clc
//Initialization of variables
phi=0.46
g=32.2
k=0.44
cv=0.98
d=10 //in
A=0.545 //ft^2
beta=160 //degrees
//calculations
u=phi*sqrt(2*g)
V1=cv*sqrt(2*g)
gQ=62.4*A*V1
T=d/2 *gQ/g *(1 -cosd(beta) /sqrt(1+k) )*sqrt(2*g)*(cv-phi)
Power=T*2*u/d
//results
printf("Torque required = %d ft lb",T)
printf("\n Power transferred = %d ft lb/s",Power)
Pi=gQ
He=Power/Pi
printf("\n Hydraulic efficiency = %.2f",He)
v1=V1-u
v2=v1/(sqrt(1+k))
hl=k*v2^2 /(2*g)
printf("Head loss in bucket friction = %.4f",hl*100)
Hn=(1/cv^2 -1)*V1^2 /(2*g)
printf("\n Head loss in  nozzle = %.4f",Hn*100)
V2cos=u+v2*cosd(beta)
V2sin=v2*sind(beta)
alpha=acot(V2cos/V2sin)
V2=V2sin/sin(alpha)
Hd=V2^2/(2*g)
printf("\n Head loss at discharge = %.2f",Hd*100)
Htotal=Hd+Hn+hl
printf("\n Total head loss = %.2f",Htotal*100)
