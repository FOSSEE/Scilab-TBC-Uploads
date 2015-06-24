clc
//Initialization ogf variables
Q=25 //gpm
A=.533 //in^2
//Calculations 
nu=Q*19.25/(A*60) //Fluid velocity
nucylinder=Q*19.25/12.56 //Cylinder velocity
//Results
printf ('Fluid velocity = %.2f',nu)
printf ('\n Cylinder velocity = %.2f',nucylinder)
