clc
//initialisation of variables
sigmay= 100 //N/mm^2
b= 10 //mm
d= 12 //mm
//CALCULATIONS
My= sigmay*b*d^3*2/(d*12)
Mp= sigmay*b*(d/2)*(d/2)
f= Mp/My
//RESULTS
printf ('f= %.1f',f)
