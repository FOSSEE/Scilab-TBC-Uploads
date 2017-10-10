//Example number 3.8, Page number 49

clc;clear;
close;

//Variable declaration
a=0.25;
b=0.25;
c=0.18;
h=1;
k=1;
l=1;
//Calculation
d_hkl=1/sqrt((a**2/h**2)+(b**2/k**2)+(c**2/l**2));     //spacing between planes(nm)
//Result
printf("spacing between planes is %.3f mm",d_hkl)
//answer in the book is wrong
