clc
//initialisation of variables
w= 62.3 //lbf/ft^3
dg= 4 //ft
d= 1 //ft
h= 2 //ft
HP= 1.0156 //ft
//CALCULATIONS
F= w*dg*d^2*(%pi/4)
F1= F*HP/h
//RESULTS
printf (' Minimum force= %.1f lbf',F1)
