clc
clear
//Initialization of variables
chord=40 //ft
v=1200 //mph
t1=80 //F
t2=200 //F
mu=0.0447 //lbm/ft hr
rho=5280 //lbm/ft^3
cp=0.2404 //Btu/lbm F
k=0.0152 //Btu/hr ft F
J=778
gc=32.17 //ft/s^2
mu2=0.0514 //lbm/ft hr
k2=0.0179 //Btu/hr ft F
cp2=0.2414 //Btu/lbm F
//calculations
Re=rho*v*chord*0.0735/mu
r=(mu*cp/k)^(1/3)
tav=t1+ r*v^2 *rho^2 /(2*gc*J*cp*3600^2)
ts=t1+ 0.5*(t2-t1)+ 0.22*(tav-t1)
Re2=v*rho*chord*0.0610/mu2
Pr2=cp2*mu2/k2
hc=cp2*v*rho*0.0610 *0.037*Re2^(-0.2) *Pr2^(-0.667)
Q2=hc*(t2-tav)
//results
printf("Temperature of wing surface = %.1f F",tav)
printf("\n Heat transfer convective = %d Btu/hr ft^2",Q2)
disp("The answers are a bit different due to rounding off error in textbook")
