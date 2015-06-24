clc
clear
//Initialization of variables
Q=350 //gal/min
D=6 //in
rho=0.84
gam=62.4
g=32.2 //ft/s^2
mu=9.2e-5 //lb-sec/ft^2
L=5280 //ft
//calculations
V=Q/(7.48*60*%pi/4 *(D/12)^2)
Nr=V*D/12 *rho*gam/g /mu
f=0.3164/(Nr)^0.25
hl=f*L*12/D *V^2 /(2*g)
hp=hl*gam*Q*rho/(550*7.48*60)
//resu;ts
printf("Horsepower required = %.2f hp/mile",hp)
