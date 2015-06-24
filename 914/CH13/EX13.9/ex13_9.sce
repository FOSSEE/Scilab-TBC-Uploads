clc;
warning("off");
printf("\n\n example 13_9 - pg700");
// given
p=2050;  //[kg/m^3] - density of soil
cp=1840;  //[J/kg*K] - heat cpapacity of soil
k=0.52;  //[W/m*K] - thermal conductivity of soil
alpha=0.138*10^-6;  //[m^2/sec]
t=4*30*24*3600;  //[sec] - no. of seconds in 4 months
Tx=-5;  //[degC]
Tinf=-20;  //[degC]
T0=20;  //[degC]
// from the fig 13.24 the dimensionless distance Z is 
Z=0.46;
// then the depth is
x=2*((alpha*t)^(1/2))*Z
printf("\n\n the depth is \n x = %f m = %f ft",x,x*(3.6/1.10));



