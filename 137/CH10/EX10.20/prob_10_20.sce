//page no 472
//prob no 10.20
//Gaussian PDF: Q(x)= %e^((-x^2)/2)/ (x*sqrt(2*%pi))
clc;
x=input("input for the function Q = ");
Q(x)= (%e^-((x^2)/2))/ (x*sqrt(2*%pi));
P=1-(2*Q(x));
disp(P);// P gives the width or spread of Gaussian PDF
