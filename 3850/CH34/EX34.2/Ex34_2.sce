
//To calculate the Time Period

//Example 34.2

clear;

clc;

m=10*10^-6;//Mass of the particle in kg

q=100*10^-6;//Charge of the particle in Coloumbs

B=25*10^-3;//Magnetic Field Strength in Tesla

T=2*%pi*m/(q*B);//Time Period in seconds

printf("Time Period of the charge = %d seconds",T);
