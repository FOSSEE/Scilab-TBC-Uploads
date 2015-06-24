clc 
//initialisation of variables
d1= 2 //ft
d2= 3 //ft
v1= 20 //ft/sec
z1= 20 //ft
z2= 0 //ft
h= 5 //ft
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
Hl= v1^2*0.15/(2*g)
a1= %pi*d1^2/4
a2= %pi*d2^2/4
v2= a1*v1/a2
p1= ((h-z1+(v2^2)/(2*g))-(0.85*v1^2/(2*g)))
//RESULTS
printf ('water pressure at top = %.2f ft of water ',p1)
