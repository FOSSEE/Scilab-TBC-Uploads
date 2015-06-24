clc
clear 
printf("example 5.11 page number 192\n\n")

//to find the equilibrium temperature
R=6.92*10^5    //in km
l=14.97*10^7   //in km
Ts=6200;    //in K
To=(R^2/l^2)^0.25*Ts;
printf("Equilibrium temperature = %f K",To)
