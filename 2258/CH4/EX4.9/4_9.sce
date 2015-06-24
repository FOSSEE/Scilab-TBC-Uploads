clc();
clear;
// To calculate the intensity of magnetisation and flux density
chi=-0.5*10^-5;    //susceptibility 
H=9.9*10^4;      //field strength in amp/m
mew_0=4*%pi*10^-7;
I=chi*H;
B=mew_0*H*(1+chi);
printf("intensity of magnetisation is %f Amp/m",I);
printf("flux density in Weber/m^2 is");
disp(B);

//answer for flux density given in the book is wrong 
