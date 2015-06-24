clc();
clear;
// To calculate the transition temperature
Hc=5*10^3       //critical magnetic field in amp/m
Ho=2*10^4;      //critical field in amp/m
T=6;         //temp in K
Tc=T/sqrt(1-(Hc/Ho));
printf("the transition temperature is %f K",Tc)

//answer in the book is wrong
