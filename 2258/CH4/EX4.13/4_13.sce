clc();
clear;
// To calculate the permeability
H=1800;     //magnetising field in amp/m
phi=3*10^-5;    //magnetic flux in weber
A=0.2;    //cross sectional area in cm^2
A=A*10^-4;     //cross sectional area in m^2
B=phi/A;
mew=B/H;
printf("the permeability is %f Henry/m",mew);

//answer given in the book is wrong
