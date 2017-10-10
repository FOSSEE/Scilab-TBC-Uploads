//Example number 3.9, Page number 49
clc;clear;
close;

//Variable declaration
h1=1;
k1=0;
l1=0;    //miller indices of (100)
h2=1;
k2=1;
l2=0;    //miller indices of (110)
a=0.287;    //lattice constant(nm)
//Calculation
d100=a/sqrt(h1**2+k1**2+l1**2);    //spacing(nm)
d110=a/sqrt(h2**2+k2**2+l2**2);    //spacing(nm)
rho=2/(sqrt(2)*(d100*10**-9)**2);    //number of atoms(per mm**2)
//Result
printf("number of atoms is %.3E atoms/mm^2",rho)
//answer in the book is wrong
