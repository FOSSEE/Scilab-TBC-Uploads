// Example 4.8.2
clc;
clear;
n1=1.45;     //refractive index of core
delta=3/100;     //relative refractive index
lamda=1.5d-6;      //wavelength
a=5d-6;     //core radius
n2=sqrt(n1^2-2*delta*n1^2);      //computing cladding refractive index
Rc=(3*n1^2*lamda)/(4*3.14*(n1^2-n2^2)^0.5);     //computing critical radius for single mode
Rc=Rc*10^6;
printf("\nCritical radius is %.2f micrometer",Rc);
lamda_cut_off= 2*3.14*a*n1*sqrt(2*delta)/2.405;
RcSM= (20*lamda/(n1-n2)^1.5)*(2.748-0.996*lamda/lamda_cut_off)^-3;      //computing critical radius for single mode
RcSM=RcSM*10^6;
printf("\nCritical radius for single mode fiber is %.2f micrometer.",RcSM);
printf("\nNOTE - Calculation error in the book.\n(2.748-0.996*lamda/lamda_cut_off)^-3; in this term raised to -3 is not taken in the book.");
//Calculation error in the book.(2.748-0.996*lamda/lamda_cut_off)^-3; in this term raised to -3 is not taken in the book.
//answer in the book is 7.23mm.(incorrect)
