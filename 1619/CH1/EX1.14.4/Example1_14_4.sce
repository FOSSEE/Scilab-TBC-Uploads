//Example 1.14.4 page 1.43
// to find diameter of core, number of modes at 1320, number of modes at 1550 um

clc;
clear;

NA = 0.20;      //Numerical Aperture..
M = 1000;   //number of modes..
lamda = 850*10^-9; // wavelength of operation..

a = sqrt(M*2*lamda^2/(%pi^2*NA^2)); // radius of core..
a=a*10^6; //converting in um for displaying...
printf("The radius of the core is %.2f um",a);
a=a*10^-6;
M1= ((%pi*a*NA/(1320*10^-9))^2)/2
printf("\n\nThe number of modes in the fibre at 1320um are %d",M1);
printf("\n\n***The number of modes in the fibre at 1320um is calculated wrongly in book");
M2= ((%pi*a*NA/(1550*10^-9))^2)/2
printf("\n\nThe number of modes in the fibre at 1550um are %d",M2);
