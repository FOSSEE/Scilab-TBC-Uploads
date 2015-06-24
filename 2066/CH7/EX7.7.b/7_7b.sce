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
y=r0-r
delta1=D*5*sqrt(8) /(Nr*sqrt(f))
vss=70
thick=13*delta1
//results
printf("Outer edge of buffer zone is at %d",vss)
printf("\n Thickness of buffer zone = %.4f in",thick)
