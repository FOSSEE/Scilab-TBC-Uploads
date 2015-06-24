//Example 1.14.2 page 1.42
//to find the Numerical aperture..

clc;
clear;
V = 26.6;      //Normalised frequency..
lamda = 1300*10^-9;     //wavelenght of operation
a = 25*10^-6;       // radius of fibre.
NA = V*lamda/(2*%pi*a);     //Numerical Aperture..
printf("The Numerical Aperture is %.3f",NA);
