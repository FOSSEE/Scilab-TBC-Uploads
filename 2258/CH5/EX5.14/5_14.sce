clc();
clear;
// To calculate maximum critical temperature
Tc=8.7;      //1st critical temp in K
Hc=6*10^5;      //critical magnetic field in Amp/m
Ho=3*10^6;      //critical magnetic field in Amp/m
T=Tc*sqrt(1-(Hc/Ho));
printf("maximum critical temperature is %f K",T);

//answer given in the book is wrong
