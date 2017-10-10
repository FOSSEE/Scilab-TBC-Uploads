clear;
clc;
printf("\t\t\tExample Number 1.1\n\n\n");
// heat transfer through brick wall 
// illustration1.1
// solution

L = 0.25; // [m]Thickness of brick wall 
dT = 20-10;//[degree celsius] temperature difference

A= 5;//[m^2] surface area of the wall
//calculating rate of heat flow across the brick wall
k=0.69;//[W/m degree celcius] thermal conductivity
q = (k*A*dT)/L;//[W] 
printf("rate of heat flow across the brick wall is %f W",q);
