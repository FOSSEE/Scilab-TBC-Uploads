clc
clear 
printf("example 5.12 page number 192\n\n")

//to find the equilibrium temperature
view_factor=0.5;
R=6.92*10^5    //in km
l=14.97*10^7   //in km
Ts=6200;    //in K
To=(view_factor*(R^2/l^2))^0.25*Ts;
printf("Equilibrium temperature = %f K",To)
