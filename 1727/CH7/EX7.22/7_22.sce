clc
//Initialization of variables
f=0.04
H=30 //m
l=200 //m
d=0.075 //m
g=9.81
rho=1000
gam=rho*g
//calculations
h=2/3 *H
vj=sqrt(2*g*h)
hl= 1/3 *H
V= sqrt(hl*d*2*g/(f*l))
dj= d*(sqrt(V/vj))
Power= 2/3 *gam*%pi/4 *d^2 *V*H
//results
printf("Size of nozzle = %.1f cm",dj*100)
printf("\n Max power = %.2f kW",Power/1000)
