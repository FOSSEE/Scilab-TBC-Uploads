clc;
clear;

printf("\n Example 11.1\n");

u_s=1; //Velocity of water
w=0.6; //Width of plane surface
l=1; //Length of plane surface
A=0.6*1; //Area of the surface
//Taking
Meu=1e-3;//Viscosity of water
rho=1000; //Density of water
//Mean value of S/pw2 from equation 11.41
//X=R/(rho*u^2)
X=0.00214;
F=X*rho*u_s^2*A;
printf("\n Total drag force = %.2f N",F);