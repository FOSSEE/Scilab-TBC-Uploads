clc
clear
//Initialization of variables
vel=50 //mph
w=240 //rpm
r0=3 //ft
L=30 //ft
rho=0.00230 //slug/ft^2
theta=30 //degrees
//calculations
V=vel*5280/3600
T=2*%pi*r0^2 *w*2*%pi/60
Fl=rho*V*T*L
F=r0*Fl*cosd(theta)
//results
printf("Max. theoretical porpulsive force = %d lb",F)
