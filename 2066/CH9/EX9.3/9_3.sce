clc
clear
//Initialization of variables
V=200 //ft/s
L=5 //ft
B=2 //ft
rho=0.00232 //slug/ft^3
mu=3.82e-7 //lb-sec/ft^2
p2=14.815 //psia
pa=14.7 //psia
//calculations
Nr=V*L*rho/mu
Cdf=0.0032
Fdf=Cdf*%pi*L*B*0.5*rho*V^2
Fd=(p2-pa)*%pi/4 *(B*12)^2 -Fdf
//results
printf("Drag on the model = %.2f lb",Fd)
