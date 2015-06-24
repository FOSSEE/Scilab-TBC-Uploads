clc 
//Initialization of variables
sg=1.25
d=0.5 //m
d2=13.5*10^-2 //m
sw=9.81 //kN/m^2
//calculations
sl=sg*sw
sm=13.6*sw
Pa=sl*d - sm*d2
//results
printf("Pressure at A = %.2f kN/m^2 vacuum ",Pa)
