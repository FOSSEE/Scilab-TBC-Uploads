clc
clear
//Initialization of variables
vel=50 //mph
w=240 //rpm
r0=3 //ft
L=30 //ft
rho=0.00230 //slug/ft^2
theta=30 //degrees
Cl=2
Cd=1
//calculations
vc=r0*w
V=vel*5280/3600
vr=vc/V
A=2*r0*L
Fl=Cl*A*0.5*rho*V^2
Fd=Cd*A*0.5*rho*V^2
F=r0*(Fl*cosd(theta) + Fd*sind(theta))
//results
printf("Force required = %d lb",F)
