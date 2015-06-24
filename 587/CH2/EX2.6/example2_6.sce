clear;
clc;

//Example2.6[Heat Conduction in a Short Cylinder]
//Given:-
//Radius R and height h of the small cylinder
T=300;//Temperature of cylinder[degree Celcius]
T_ambient=20;//Temperature of ambient air[degree Celcius]
//Variation is thermal conductivity is negligible
//The cylinder is cooled unifromly from the top and bottom surfaces in the z-direction as well as the lateral surface in the radial r-direction.Also Temperature at any point in the ball changes with time during cooling. Therefore this is a two dimensional transient heat conduction problem i.e. T=T(r,z,t)
disp("The differential equation governing the variation of temperature in the billet is ")
disp("((1/r)(d/dr)(k*r(dT/dr)))+((d/dz)(k(dT/dz)))=rho*c(dT/dt)")
disp("In case of constant thermal conductivity it reduces to")
disp("((1/r)(d/dr)(r(dT/dr)))+(d^2)T/(dz^2)=(1/a)(dT/dt)") 