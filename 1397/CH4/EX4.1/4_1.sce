//clc();
clear;
//To determine the change in magnetic moment
r=0.052*(10^-9);            //radius of orbit in m
B=1;                     //magnetic field of induction in Web/m^2
e=1.6*(10^-19);            //electron charge in C
m=9.1*(10^-31);            //mass of electron in kg
A=(e^2)*(r^2)*B;
dmew=A/(4*m);
printf("change in magnetic moment is");
disp(dmew);

//answer in book is wrong
