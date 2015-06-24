clc();
clear;
// To calculate the magnetisation and flux density
H=10^6;    //magnetic field in amp/m
chi=1.5*10^-3;     //susceptibility
mew_0=4*%pi*10^-7;
M=chi*H;
B=mew_0*(M+H);
printf("magnetisation is %f Amp/m",M);
printf("flux density is %f Tesla",B);

//answer for flux density given in the book is wrong
