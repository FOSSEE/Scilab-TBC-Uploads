

clc
//initialization of variables
t = 3*60 // seconds
crat = 0.5 // Ratio of c and csat
//calculations
ka = -(1/t)*log(1-crat)
//results
printf("the mass transfer co efficient along the product with a is %.1e sec^-1",ka)
