//Example 1.14.9
//To find normalised frequency and the number of modes for the fibre..

clc;
clear;

lamda= 0.82*10^-6;      //wavelength ofoperation.
a= 2.5*10^-6;       //Radius of core..
n1= 1.48;       //RI of core..
n2= 1.46;   //RI of cladding
NA= sqrt(n1^2-n2^2);        //Numerical Aperture..
V= 2*%pi*a*NA/lamda;        //Normalisd frequency..
printf('The normalised frequency is %.3f',V);
M= V^2/2;   //The number of modes..
printf("\n\nThe number of modes in the fibre are %.2f",M);
