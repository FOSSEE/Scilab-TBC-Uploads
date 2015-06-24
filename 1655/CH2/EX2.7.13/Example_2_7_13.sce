
// Example 2.7.13  page 2.31

clc;
clear;

n1=1.447;       //refractive index of core
n2=1.442;       //refractive index of cladding
lamda=1.3d-6;       //Wavelength
a=3.6d-6;        //core radius

NA=sqrt(n1^2 - n2^2);       //computing Numerical aperture
v= 2*%pi*a*NA/lamda;      //computing normalized frequency

printf("As normalized frequency is %.2f which is less than 2.405, this fiber will permit single mode transmission",v);

lamda_cut_off=v*lamda/2.405
lamda_cut_off=lamda_cut_off*10^9
printf("\n\nSingle mode operation will occur above this cut off wavelength of %.2f nm",lamda_cut_off);
printf("\n\n NOTE - Calculation error in the book.\n(1.447^2 - 1.442^2)^0.5=0.121; they have taken 0.141\nHence calculations after that are incorrect in the book");

//Calculation error in the book.(1.447^2 - 1.442^2)^0.5=0.121; they have taken 0.141.Hence calculations after that are incorrect in the book.
//They have taken radius as 2.6d-6, whereas in question it is given 3.6d-6.
//answers in the book
//Normalized frequency is 1.77.(incorrect)
//cut off wavelength 956nm.(incorrect)
