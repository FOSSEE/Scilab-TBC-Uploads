// Example 2.10.2  page 2.40

clc;
clear;

a=50d-6;        //core radius
lamda=1500d-9;       //operating wavelength
n1=2.53;     //core refractive index
n2=1.5;     //cladding refractive index

delta=(n1-n2)/n1;       //computing delta
v= 2*3.14*a*n1*sqrt(2*delta)/lamda;      //computing normalized frequency
M=(v)^2/2;      //computing guided modes
printf("\nNormalized Frequency is %.1f\nTotal number of guided modes are %.d",v,M);
printf("\nNOTE - Calculation error in book. \n Normalized frequency is 477, it is calculated as 47.66");

//Calculation error in book. Normalized frequency is 477, it is calculated as 47.66, hence answers after that are erroneous.
//answers  in the book
//normalized frequency = 48.(incorrect)
//guided modes = 1152.(incorrect)
