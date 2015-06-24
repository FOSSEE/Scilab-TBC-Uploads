//Example 1.14.12
//To find noramlised frequency and number of modes

clc;
clear;

lamda= 850*10^-9;       //wavelength of operation.
a= 25*10^-6;        //Radius of core
n1= 1.48;       //RI of Core...
n2= 1.46;       //RI of cladding..

NA= sqrt(n1^2-n2^2);    //Numerical Aperture

V= 2*%pi*a*NA/lamda;    //Normalised frequency..
printf('The normalised frequency is %.2f',V);

lamda1= 1320*10^-9;     // wavelength changed...
V1= 2*%pi*a*NA/lamda1;  //Normalised frequency at new wavelength..

M= V1^2/2;      //Number of modes at new wavelength..
printf("\n\nThe number of modes in the fibre at 1320um are %d",M);
lamda2= 1550*10^-9;     //wavelength 2...
V2= 2*%pi*a*NA/lamda2;  //New normalised frequency..
M1= V2^2/2; // number of modes..
printf("\n\nThe number of modes in the fibre at 1550um are %d",M1);
