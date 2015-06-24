clc();
clear;
// To calculate the intensity of magnetisation and flux density
chi=0.5*10^-5;    //susceptibility 
H=10^6;      //field strength in amp/m
mew_0=4*%pi*10^-7;
I=chi*H;
B=mew_0*(I+H);
printf("intensity of magnetisation is %f Amp/m",I);
printf("flux density is %f Weber/m^2",B);

