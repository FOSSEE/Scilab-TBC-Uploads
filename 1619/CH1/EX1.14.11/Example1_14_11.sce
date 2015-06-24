//Example 1.14.11
//To find Numerical Aperture,Solid Acceptance angle,Normalised frequency,Number of modes..

clc;
clear;

n1= 1.5;    // RI of core..
n2= 1.38;   //RI of cladding..
a= 25*10^-6;    //radius of core..
lamda= 1300*10^-9;     // wavelength of operation...
NA= sqrt(n1^2-n2^2);    //Numerical Aperture..
printf('The Numerical Aperture of the given fibre is %.4f',NA);
V= 2*%pi*a*NA/lamda;    //Normalised frequency..
printf('\n\nThe normalised frequency is %.2f',V);

theta= asind(NA);       //Solid acceptance anglr..
printf('\n\nThe Solid acceptance angle is %d degrees',theta);
M= V^2/2;       //Number of modes..
printf("\n\nThe number of modes in the fibre are %d",M);
printf("\n\n***Number of modes wrongly calculated in the book..");
