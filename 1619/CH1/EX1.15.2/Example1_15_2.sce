//Example 1.15.2
// to find maximum core diameter for single mode..

clc;
clear;

n1= 1.5;    //RI of core..
del= 0.01;   //Relative RI difference...
lamda= 1.3;   //Wavelength of operation...
V= 2.4*sqrt(2); // Maximum value of V for GRIN...
a= V*lamda/(2*%pi*n1*sqrt(2*del));  //radius of core..
printf('The radius of core is %.2f um',a);
printf('\n\nThe maximum possible core diameter is %.2f um',2*a);
