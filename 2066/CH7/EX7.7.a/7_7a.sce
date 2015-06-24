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
u1=umax*(y/r0)^(1/n)
u2=umax+ 2.5*Vs*log(y/r0)
u3=umax+ Vs/k *(sqrt(1-y/r0) + log(1-sqrt(1-y/r0)))
u4=Vs*(5.5+ 5.75*log10(Vs*y/12 *rho/mu))
//results
printf("Using equation 7-13, velocity = %.1f ft/s",u1)
printf("\n Using equation 7-18, velocity = %.1f ft/s",u2)
printf("\n Using equation 7-25, velocity = %.1f ft/s",u3)
printf("\n Using equation 7-34a, velocity = %.1f ft/s",u4)
