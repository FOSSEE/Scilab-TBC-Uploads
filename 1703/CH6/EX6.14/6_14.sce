
clc
//initialisation of variables
L= 8000 //ft
d= 5 //ft
g= 32.2 //ft/sec^2
d= 5 //ft
l= 250 //ft
b= 100
//CALCULATIONS
A= %pi*0.25*d^2*l-0.5*d^2*b
V= A*g/L
//RESULTS
printf ('Velocity = %.2f ft/sec',V)
