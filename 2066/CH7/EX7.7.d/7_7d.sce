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
y=14*delta1
u2=62.2*(y/18)^(1/n)
u3=Vs*(5.50 + 5.75*log10(Vs*y/12 *rho/mu))
//results
printf("Using equation 7-13, velocity = %.1f ft/s",u2)
printf("\n using equation 7-34a, velocity = %.1f ft/s",u3)
