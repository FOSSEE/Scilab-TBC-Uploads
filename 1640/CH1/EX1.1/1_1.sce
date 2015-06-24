clc 
//initialisation of variables
h1= 2 //in
h2= 2 //in
wn= 13.6 //g/cc
w= 1 //g/cc
W= 62.4 //lbs/ft^3
//CALCULATIONS
ha= ((h2*wn/w)-h1)/12
pa= ha*W/144
//RESULTS
printf ('Pressure of water= %.2f lb/sq in ',pa)
