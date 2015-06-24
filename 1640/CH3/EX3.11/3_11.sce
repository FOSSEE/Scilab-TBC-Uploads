
clc 
//initialisation of variables
H1= 9 //ft
H2= 4 //ft
Cd= 0.6
a= 4 //in^2
A1= 72 //ft^2
A2= 24 //ft^2
g=32.2 //ft/s^2
//CALCULATIONS
t= (2*A1*A2/(A1+A2))*(sqrt(H1)-sqrt(H2))*144/(Cd*60*a*sqrt(2*g))
//RESULTS
printf ('time required to reduce the water level difference = %.1f min',t)
