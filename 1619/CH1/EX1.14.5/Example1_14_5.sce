//Example 1.14.5 page 1.44
//To find acceptance angle ; critical angle;number of modes..

clc;
clear;

NA = 0.2;   //Numerical Aperture..
n2= 1.59;  // RI of cladding..
n0= 1.33; //   RI of water..
lamda =  1300*10^-9;      // wavelength..
a = 25*10^-6;   // radius of core..
n1 = sqrt(NA^2+n2^2);   //RI of core..
phiA= asind(sqrt(n1^2-n2^2)/n0);     //Acceptance angle..
printf("The Acceptance angle is %.2f",phiA);

phiC= asind(n2/n1); // Critical angle..
printf("\n\nThe critical angle is %.2f",phiC);
V = 2*%pi*a*NA/lamda;   // normalisd frequency
M= V^2/2;       //number of modes
printf("\n\nThe number of modes in the fibre are %d",M);

printf("\n\n***The value of the angle differ from the book because of round off errors.");
