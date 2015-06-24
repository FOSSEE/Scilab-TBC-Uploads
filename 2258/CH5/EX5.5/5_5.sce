clc();
clear;
// To calculate the critical field
Tc=7.2;         //critical temp in K
Ho=6.5*10^3;     //critical magnetic field in amp/m
T=5;         //temp in K
Hc=Ho*(1-((T/Tc)^2));
printf("the critical magnetic field at 5K is %f amp/m",Hc);

//answer given in the book is wrong
