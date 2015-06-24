clc
//initialization of new variables
clear
D=3 //cm
u=11 //m/s
w=7000 //RPM
r=1.2 //kg/m^3
//calculations
D=D*10^-2
R=D/2
S=%pi*R^2
Rw=R*2*%pi*w/60*1/u
Cl=0.27 //based on Rw
Cd=0.63 //based on Rw
L=Cl*0.5*r*u^2*S
D=Cd*0.5*r*u^2*S
//results
printf('Lift = %.3f N',L)
printf('\n Drag = %.3f N',D)
