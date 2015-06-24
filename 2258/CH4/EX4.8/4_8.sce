clc();
clear;
// To calculate the change in magnetic moment
r=0.052*10^-9;     //radius of orbit in m
B=1;    //magnetic field in Wb/m^2
e=1.6*10^-19;   //charge of electron in coulomb
m=9.1*10^-31;    //mass of electron in kg
dmew=(e^2)*(r^2)*B/(4*m);
printf("magnetic moment in Am^2 is");
disp(dmew);

//answer given in the book is wrong
