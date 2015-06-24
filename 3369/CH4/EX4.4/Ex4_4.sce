//Chapter 4, Exmaple 4, page 141
//Claculate distance to produce avalanche
clc
clear
//Rewrite equation 4.2
//using the values of a and b from previous example
//convert integartion to quaderatic equation form
x=poly(0,"x");
p=59.97-4*10**4*x+7.5*10**5*x^2 // making the polinomial equation
r= roots(p) //obtaining the roots
printf("\n %f m or %f m away from the cathode",r(1),r(2))

//Answer may vary due to round of error.
