clc
clear
//Initialization of variables
spg=0.84
z=1 //in
gam=62.4
patm=14.7 //psia
T=459.6+85 //R
R=53.3
g=32.2 //ft/s^2
D=3 //ft
mu=3.88e-7 //lb-sec/ft^2
//calculations
dp=spg*z/12 *gam
rho=patm*144/(R*T*g)
umax=sqrt(2*dp/rho)
V=0.8*umax
Nr=V*D*rho/mu
V2=0.875*umax
mass=rho*%pi/4 *D^2 *V2
emf=V2^2 /(2*g)
hp=emf*mass*g/550
//results
printf("Mass flow rate = %.2f slug/sec",mass)
printf("\n Horsepower input of the fan = %.2f hp",hp)
