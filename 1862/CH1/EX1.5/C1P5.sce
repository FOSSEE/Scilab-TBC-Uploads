

clear
clc
//to find value of plank time
// GIVEN::

//speed of light
c = 3.00e8  //m/s
//Newton's gravitational constant
G = 6.67e-11 // m^3/s^2.Kg
//plank's constant
h = 6.63e-34// Kg.m^2/s

// SOLUTION:

//plank time
tp = sqrt((G*h)/c^5)// seconds
//answer in the book is slightly different which is printing mistake
 printf ("\n\n Plank time tp =\n\n %.2e seconds" ,tp);
