//Example 1.15.3
//To find the cutoff wavelength..

clc;
clear;

n1= 1.46;       //RI of core..
a = 4.5;    //radius of core in um..
del= 0.0025;    //relative RI difference..
V= 2.405;   // Normalisd frequency for single mode..
lamda= 2*%pi*a*n1*sqrt(2*del)/V;    //cutoff wavelength...
printf('The cut off wavelength for the given fibre is %.3f um',lamda);
