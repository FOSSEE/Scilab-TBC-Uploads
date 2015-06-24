clear
clc
//initialisation of variables
d= 40 //lb/ft^2
w= 4 //ft
h= 6 //ft
l= 12 //ft
//CALCULATIONS
W= w*h*d*l
V= W/64
D= V/(w*l)
//RESULTS
printf ('Volume of water displaced = %.f ft^3',V)
printf ('\n Depth of immersion = %.2f ft',D)
printf ('\n Centre of buoyancy = %.2f ft from base',D)
