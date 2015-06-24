clc
clear
//Initialization of variables
rpm=60 
rho=2 //slugs/ft^3
mu=3.5e-5 //lb-sec/ft^2
D=4/12 //ft
r=2 //ft
//calcualtions
V=rpm*2*%pi/60 *2
Nr=V*D*rho/mu
Cd=1.1
Fd=Cd*%pi/4 *(D)^2 *0.5*rho*V^2
T=2*Fd*r
w=rpm*2*%pi/60
hp=T*w/550
//results
printf("Horsepower required = %.2f hp",hp)
