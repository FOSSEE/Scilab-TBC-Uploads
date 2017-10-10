clear;
clc;
printf("\t\t\tExample Number 1.2\n\n\n");
// heat loss through a glass window 
// illustration1.2
// solution

L = 0.015; // [m]Thickness of glass window
dT = 20-(-5);//[degree celsius] temperature difference

A= 0.5;//[m^2] surface area of the glass window
//calculating rate of heat flow across the brick wall
k=0.78;//[W/m degree celcius] thermal conductivity of the glass window
q = (k*A*dT)/(1000*L);//[kW] rate of heat loss
t=2;//[h] time in hours
H=q*t;//[kW.h] total heat loss in time t 
printf("Total heat loss across the glass window in 2 hours is %f kW.H",H);
