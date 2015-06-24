clc();
clear;
// To calculate the magnetisation and flux density
chi=3.7*10^-3;    //susceptibility 
H=10^4;      //field strength in amp/m
mew_0=4*%pi*10^-7;
M=chi*H;
B=mew_0*(M+H);
printf("magnetisation is %f Amp/m",M);
printf("flux density is %f Weber/m^2",B);

//answer for flux density given in the book is wrong
