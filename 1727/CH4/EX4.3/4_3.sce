clc
//Initialization of variables
angle =45 //degrees
p1=150*10^3 //N/m^2
Q=0.5 //m^3/s
d1=60 //cm
d2=30 //cm
rho=1000 //kg/m^3
g=9.81 //m/s^2
//calculations
V1=Q/(%pi/4 *(d1/100)^2)
V2=V1*(d1/d2)^2
P2=rho*g*(p1/(rho*g) + V1^2 /(2*g) -V2^2 /(2*g))
Rx=p1*%pi/4*(d1/100)^2 - P2*%pi/4 *(d2/100)^2 *cosd(angle) -rho*Q*(V2*cosd(angle) -V1)
Ry=P2*%pi/4 *(d2/100)^2 *sind(angle) + rho*Q*(V2*sind(angle))
R=sqrt(Rx^2 + Ry^2)
//results
printf("resultant force = %.2f kN",R/1000)
