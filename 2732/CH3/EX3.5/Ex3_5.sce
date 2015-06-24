clc
// initialization of variables
clear
epsillon_A= 700*10^-6 
epsillon_B= 300*10^-6 
epsillon_C= 300*10^-6 
theta=45 // degrees
theta=theta*%pi/180 // radians
// calculations
epsillon_x=epsillon_A
epsillon_y=epsillon_C
gamma_xy=(epsillon_B-(epsillon_x*cos(theta)^2+epsillon_y*sin(theta)^2))/(sin(theta)*cos(theta))
epsillon_1=1/2*(epsillon_x+epsillon_y)+(1/2)*sqrt((epsillon_x-epsillon_y)^2+gamma_xy^2)
epsillon_2=1/2*(epsillon_x+epsillon_y)-(1/2)*sqrt((epsillon_x-epsillon_y)^2+gamma_xy^2)
phi=0.5*atan(gamma_xy/(epsillon_x-epsillon_y))
phi=phi*180/%pi
//results
printf('The principal strains are %.3e, %.3e',epsillon_1,epsillon_2)
printf('\n phi = %.2f degrees',phi)
