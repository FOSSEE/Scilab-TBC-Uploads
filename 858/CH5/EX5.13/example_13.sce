clc
clear 
printf("example 5.13 page number 193\n\n")

//to find the surface temperature
view_factor=0.25;
R=7.1*10^10    //in cm
l=1.5*10^13   //in cm
Ts=5973;    //in K
alpha=0.2;
epsilon=0.1;

ratio=alpha/epsilon;
To=(ratio*view_factor*(R^2/l^2))^0.25*Ts;
printf("Equilibrium temperature = %f K",To)
