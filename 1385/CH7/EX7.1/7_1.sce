clc
//initialisation of variables
R= 10 //ohms
V= 5 //v
t= 20 //min
//CALCULATIONS
I= V/R
Q= I*t*60
E= Q*V
//RESULTS
printf (' current= %.1f amp',I)
printf (' \n coloumbs of electricity will pass= %.f coloumbs',Q)
printf (' \n energy expended= %.f joules',E)
