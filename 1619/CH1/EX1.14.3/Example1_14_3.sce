//Example 1.14.3
// to calculate the normalise frequency..

clc;
clear;

a = 40*10^-6; //radius of core...
del = 0.015;    //relative RI difference..
lamda= 0.85*10^-6;      //wavelength of operation..
n1=1.48;        //RI of core..

NA = n1*sqrt(2*del);    //Numerical Aperture..
printf(" The Numerical Aperture is %.4f",NA);
V = 2*%pi*a*NA/lamda;   //normalised frequency
printf(" \n\nThe Normalised frequency is %.2f",V);

M = V^2/2;      //number of modes..
printf("\n\nThe number of modes in the fibre are %d",M);
