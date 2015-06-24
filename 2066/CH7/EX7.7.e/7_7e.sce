clc
clear
//Initialization of variables
D=36 //in
rho=0.00226  //slug/ft^3
mu=3.88e-7 //lb-sec/ft^2
umax=62.2 //ft/s
V=54.5 //ft/s
Nr=9.5e5
r0=18 //in
r=12 //in
n=8.8
k=0.4
//calculations
f=0.0032 + 0.221/(Nr^0.237)
Vs=sqrt(f/8) *V
delta1=D*5*sqrt(8) /(Nr*sqrt(f))
u2=Vs^2 *delta1/12 *rho/mu
T0=rho*Vs^2
T02=mu*u2/delta1 *12
//results
printf("Using equation 7-9a, shearing stress = %.5f lb/ft^2",T0)
printf("\n Using equation 7-28, shearing stress = %.5f lb/ft^2",T02)
disp("The answers are a bit different due to rounding off error in textbook")
