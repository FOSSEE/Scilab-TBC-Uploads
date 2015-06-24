clc 
//Initialization of variables
h1=1.5 //m
h2=2 //m
g1=800 //kg/m^3
g2=1000 //kg/m^3
g=9.81
//calculations
P=h1*g*g1 + h2*g*g2
//results
printf("Pressure at the bottom of the vessel = %.2f kN/m^2",P/1000)
