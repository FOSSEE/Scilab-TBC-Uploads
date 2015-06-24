clc 
//initialisation of variables
L= 15 //ft
H= 1 //ft
Cd= 0.6
v= 80 //ft/min
g= 32.2 //ft/sec62
w= 62.4 //lb/ft^3
//CALCULATIONS
vo= v/60
Q= 2*Cd*sqrt(2*g)*L*((1+(vo^2/(2*g)))^1.5-(vo^2/(2*g))^1.5)*w*100/(3*550)
//RESULTS
printf ('HP = %.f HP ',Q)

