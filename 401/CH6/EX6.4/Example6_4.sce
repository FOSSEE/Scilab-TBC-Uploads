//Example 6.4
//Program to compare the approximate radiative minority carrier 
//lifetimes in gallium arsenide and silicon

clear;
clc ;
close ;

//Given data
N=10^18;              //per cm^3 - HOLE CONCENTRATION
Br1=7.21*10^(-10);    //cm^3 / s - RECOMBINATION COEFFICIENT FOR GaAs
Br2=1.79*10^(-15);    //cm^3 / s - RECOMBINATION COEFFICIENT FOR Si

//Radiative minority carrier lifetime for GaAs
tau_r1=1/(Br1*N);

//Radiative minority carrier lifetime for Si
tau_r2=1/(Br2*N);

//Displaying the Results in Command Window
printf("\n\n\t Radiative minority carrier lifetime for GaAs is %0.2f ns.",tau_r1/10^(-9));
printf("\n\n\t Radiative minority carrier lifetime for Si is %0.2f ms.",tau_r2/10^(-3));