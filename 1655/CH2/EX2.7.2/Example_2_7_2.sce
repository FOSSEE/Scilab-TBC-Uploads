// Example 2.7.2  page 2.24

clc;
clear;

n1=1.47     //refractive index of core
a=4.3d-6;       //radius of core
delta=0.2/100       //relative index difference

lamda= 2*3.14*a*n1*sqrt(2*delta)/2.405;     //computing wavelength
lamda=lamda*10^9;
printf("Wavelength of fiber is %d nm.",lamda);
printf("\n\nNote:Calculation error, answer given in the book (1230nm) is incorrect.");

//answer in the book is given as 1230nm which is incorrect.
