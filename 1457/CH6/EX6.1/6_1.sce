clc
//Initialization of variables
g=9.81 //kN/m^3
V2=12 //m/s
V3=12 //m/s
A2=10^2
A1=15^2
A3=7.5^2
t1=15 
t2=30
//calculations
V1=(A2*V2 + A3*V3)/A1
Q1=%pi /4 *A1*10^-4 *V1
Q2=%pi /4 *A2*10^-4 *V2
Q3=%pi /4 *A3*10^-4 *V3
P1g=V3^2 /(2*g) - V1^2 /(2*g)
P1=P1g*g
rho=10^3 
V2x=V2*cosd(t1)
V3x=V3*cosd(t2)
V1x=V1
Fx= -P1*A1*10^-4 + (rho*Q2*V2x + rho*Q3*V3x - rho*Q1*V1x)
Fx=Fx*10^-3 
V2y=V2*sind(t1)
V3y=-V3*sind(t2)
V1y=0
Fy=rho*Q2*V2y +rho*Q3*V3y -rho*Q1*V1y
Fy=Fy*10^-3
//results
printf("Force in x directio = %.3f kN",Fx)
printf("\n Force in y direction = %.3f kN",Fy)
