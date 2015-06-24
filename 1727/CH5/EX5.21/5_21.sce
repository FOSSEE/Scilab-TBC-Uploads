clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
sm=13.6
s=1
y=0.12 //m
Cv=0.984
d1=0.05 //m
d2=0.1 //m
nu=1e-6
//calculations
Q=Cv*%pi/4 *d1^2 *sqrt(2*g) /sqrt(1- (d1/d2)^4) *sqrt(y*(sm/s -1))
V1=Q/(%pi/4 *d2^2)
R=V1*d1/nu
//results
printf("Since, reynolds number is in required value, Flow rate = %.4f m^3/s",Q)
