clc 
//initialisation of variables
Q= 400 //cuses
V= 8 //ft/sec
C= 150
//CALCULATIONS
A= Q/V
d= sqrt(A/2)
i= V^2/(C^2*(d/2))
//RESULTS
printf ('slope %.4f ',i)
