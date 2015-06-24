clc
clear
//Initialization of variables
d2=4 //in
d1=3 //in
e=0.0005 //ft
mu=3.75e-5 //lb-sec/ft^2
rho=1.94 //slugs/ft^3
Q=100 //gal/min
L=100 //ft
g=32.2 //ft/s^2
gam=62.4
//calculations
A=%pi/4 *((d2/12)^2 -(d1/12)^2)
WP=%pi*(d1+d2)/12
R=A/WP
RR= 2*R/e
V= Q/(7.48*60*A)
Nr=V*4*R*rho/mu
f=0.035
hl=f*L/(4*R) *V^2 /(2*g)
hp=hl*Q/(7.48*60) *gam/550
//results
printf("horsepower required = %.2f hp/100 ft",hp)
