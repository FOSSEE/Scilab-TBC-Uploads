//Chapter 4, Exmaple 5, page 141
//Claculate minimum distance to produce avalanche of size 10^19
clc
clear
//Rewriting equation 4.2 and converting it into quadratic equation
x=poly(0,"x");
p=43.75-4*10**4*x+7.5*10**5*x^2 // making the polinomial equation
r= roots(p) //obtaining the roots
printf("\n Minimum distance = %f m",r(2)) // other root is disregarded

//Answer may vary due to round of error.
