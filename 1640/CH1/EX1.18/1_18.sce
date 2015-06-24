clc 
//initialisation of variables
W= 10000 //tons
A= 15000 //ft^2
d= 15 //ft
Dsw= 64 //lb/ft^3
Dw= 62.4 //lb/ft^3
//CALCULATIONS
Vsw= 2240/Dsw
Vw= 2240/Dw
dV= Vw-Vsw
V1= W*dV
h= W/A
h1= d+h
//RESULTS
printf ('Depth necessary to just float the ship in river = %.2f ft ',h1)
