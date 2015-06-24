clc
//Initialization of variables
g=9.81 //m/s^2
rho=860 //kg/m^3
P1=20 *10^3 //Pa
P2=50*10^3 //Pa
z=2.8 //m
d1=0.1 //m
//calculations
V1=sqrt(2*g*(P2/(rho*g) -z - P1/(rho*g)))
Q=%pi/4 *d1^2 *V1
//results
printf("rate of flow = %.4f m^3/s",Q)
