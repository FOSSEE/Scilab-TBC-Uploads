clc
//initialisation of variables
A1= 400 //ft^2
f= 0.01
l= 1000 //m
d= 0.25 //ft
H1= 7.22 //ft
H2= 1.66 //ft
A2= 225 //ft^2
a= 0.0491 //ft^2
g= 32.2 //ft^2
//CALCULATIONS
T= 2*A1*sqrt(1+(4*f*l/d))*(sqrt(H1)-sqrt(H2))/(a*60*sqrt(2*g)*(1+(A1/A2)))
//RESULTS
printf ('Time taken to reduce height = %.f min',T)
