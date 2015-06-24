clc
//initialisation of variables
sw= 62.3 //lbf/ft^3
d= 288 //ft
p= 1 //lbf/in^2
//CALCULATIONS
P= sw*d/144
D= p*144/sw
//RESULTS
printf (' pressure at a depth of 288 ft= %.1f lbf/in^2',P)
printf (' \n depth= %.2f ft',D)
