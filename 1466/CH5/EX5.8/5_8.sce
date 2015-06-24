
clc
//initialisation of variables
l= 12 //ft
w= 4 //ft
h1= 1/12 //ft
h2= 1 //ft
//CALCULATIONS
T= (2/(3*60))*(w*l/2.64)*((1/h1^1.5)-(1/h2^1.5))
//RESULTS
printf (' time taken = %.1f min',T)
