clc
clear
//Initialization of variables
d1=12 //in
d2=8 //in
v1=15 //ft/s
p1=12 //psig
p2=5.85 //psig
rho=1.94 //ft^3/slug
angle=60 //degrees
//calculations
Q=%pi/4 *(d1/12)^2 *v1
v2=Q/(%pi/4 *(d2/12)^2)
pa1=p1*%pi/4 *(d1)^2
pa2=p2*%pi/4 *(d2)^2
qv1=rho*Q*v1
qv2=rho*Q*v2
Fx=pa1+qv1+ cosd(angle)*(pa2+qv2)
Fy=sind(angle)*(pa2+qv2)
//results
printf("Horizontal component of force = %d lb",Fx)
printf("\n Vertical component of force = %d lb",Fy)
