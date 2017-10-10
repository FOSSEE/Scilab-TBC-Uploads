
//To Calculate the Current and Current Density

//Example 32.1

clear;

clc;

n=6.0*10^16;//Total number of electrons

e=1.6*10^-19;//Charge of an electron

q=n*e;//Total charge crossing a prependicular cross section in one sec

t=1;//Time in seconds

i=q/t;//Current

printf("(a)Current(i)= % f*10^-3 A",i*10^3);

s=1.0*10^-3;//electron beam has an apperture

J=i/s;//current density

printf("\n(b)Current density in the beam (j)= %.1f*10^3 A/m^2",J);
