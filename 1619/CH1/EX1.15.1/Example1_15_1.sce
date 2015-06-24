//Example 1.15.1 page 1.56..
// Maximum core diameter..

clc;
clear;
n1= 1.48;       //RI of core..
del= 0.015;     //relative RI differencr..
lamda= 0.85;  //wavelength of operation..
V= 2.4; // for single mode of operation..

a= V*lamda/(2*%pi*n1*sqrt(2*del));  //radius of core..
printf('The raduis of core is %.2f um',a);
printf('\n\nThe maximum possible core diameter is %.2f um',2*a);
