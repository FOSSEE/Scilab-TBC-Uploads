clc
//Initialization of variables
Q=20*10^3 //cc/s
depth=4 //m
d=5 //cm
g=9.81 //m/s^2
rho=10^3 //kg/m^3
//calculations
V1= Q/(%pi/4 *d^2) /100
V2= sqrt(2*g*(V1^2/(2*g) + depth))
W=rho*Q*(V2-V1)/10^6
//results
printf("weight of water = %d N",W)
