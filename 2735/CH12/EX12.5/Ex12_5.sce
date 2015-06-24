clc
clear
//Initialization of variables
D=0.0724 //ft
gc=32.2 //ft/s^2
rho=1/14
L=100 //ft
mu2=1.46*10^(-10)
dp=2.32
dia=5 //in
rho2=48500
vol=14 //ft^3/lbm
//calculations
ref=D^3 *2*dp*gc*rho/(mu2*L)
mf=rho2*%pi/4 *(dia/12) *sqrt(mu2)
mfr=mf*vol*60
//results
printf("Mass rate of air flow = %d cfm",mfr)
disp("The answer is a bit different due to rounding off error in textbook")
