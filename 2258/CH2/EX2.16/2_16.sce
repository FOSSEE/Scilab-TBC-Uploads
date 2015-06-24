clc();
clear;
// To calculate the drift velocity of free electrons
A=10;   //area of cross section in mm^2
A=A*10^-6;   //area of cross section in m^2
i=100;   //current in amp
n=8.5*10^28;    //number of electrons per mm^3
e=1.6*10^-19;    //electron charge in coulumb
vd=1/(n*A*e);
printf("drift velocity is %f m/s",vd);

//answer given in the book is wrong
