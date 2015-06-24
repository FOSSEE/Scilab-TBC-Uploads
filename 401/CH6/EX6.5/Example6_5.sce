//Example 6.5
//Program to determine the threshold current density and the 
//threshold current for the device

clear;
clc ;
close ;

//Given data
n=3.6;                    //REFRACTIVE INDEX OF GaAs
beeta_bar=21*10^(-3);     //A/cm^3 - GAIN FACTOR
alpha_bar=10;             //per cm - LOSS COEFFICIENT
L=250*10^(-4);            //cm - LENGTH OF OPTICAL CAVITY
W=100*10^(-4);            //cm - WIDTH OF OPTICAL CAVITY

//Reflectivity for normal incidence
r=((n-1)/(n+1))^2;

//Threshold current density
Jth=1/beeta_bar*(alpha_bar+1/L*log(1/r));

//Threshold current
Ith=Jth*W*L;

//Displaying the Results in Command Window
printf("\n\n\t Threshold current density is %0.2f X 10^3 A/cm^2.",Jth/10^3);
printf("\n\n\t Threshold current is %0.1f mA.",Ith/10^(-3));