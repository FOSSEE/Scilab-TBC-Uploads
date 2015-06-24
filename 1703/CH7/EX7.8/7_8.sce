clc
//initialisation of variables
clear
t= 75 //sec
h= 10.5 //in
h1= 13.5 //in
//CALCULATIONS
r= t*%pi*sqrt(2*h^2)/log((sqrt(2*h1^2)+h1)/(sqrt(2*h^2)-h))
t= -r*((1/h1)-(1/h))
//RESULTS
printf ('A/K = %.f ',r)
printf ('\n Time taken = %.1f sec',t)
