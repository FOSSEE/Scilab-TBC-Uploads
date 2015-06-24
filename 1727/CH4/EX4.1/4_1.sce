clc
//Initialization of variables
Q=0.2 //m^3/s
v=30 //m/s
angle=120 //degrees
rho=1000 //kg/m^3
//calculations
Rx=rho*Q*(v-v*cosd(angle))
Ry=rho*Q*v*sind(angle)
R=sqrt(Rx^2 +Ry^2)
//results
printf("Resultant force = %.2f kN",R/1000)
