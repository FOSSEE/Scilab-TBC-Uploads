
clear;
clc;

printf("\t example 6.2\n");

T1=300; //air temperature,K
v=1.5; //air velocity, m/s
t=0.5; //thickness, m
u=1.853*10^-5; //dynamic viscosity,kg/(m*s)
v1=1.566*10^-5; // kinematic viscosity, m^2/s

Rex=v*t/v1; //reynolds no. is low enough to permit the use of laminar flow analysis.

b=4.92*t/(Rex^0.5)*100; // bl thickness, cm

//in this case b/x=1.124/50=0.0225 so laminar flow is valid.

v2=0.8604*(v1*v/t)^(0.5);
//since v2 grows larger as x grows smaller, the condition v2<u is not satisfied very near the leading edge.

printf("\t boundary layer thickness is : %.3f cm\n",b);
//in this case del/thickness is 0.0225.
x=0.8604*(v1*v/t)^0.5;  //velocity,m/s
y=x/t;
printf("\t since velocity grows larger as thickness grows smaller, the condition x<<u is not satisfied very near the leading edge. therefore the BI approximation themselves breakdown.")
//end
