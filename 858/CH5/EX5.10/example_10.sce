clc
clear 
printf("example 5.10 page number 191\n\n")

//to find temperature of earth
R=7*10^10;   //in cm
Ts=6000;   //in K
l=1.5*10^13;   //in m
To=((R^2/(4*l^2))^0.25)*Ts;
printf("temperature of earth = %f K",To)
