//Diffusion Flux Computation

clear;
clc;

printf("\tExample 5.1\n");

Ca=1.2;       //Concentration at A in  kg/m^3
Cb=0.8;       //Concentration at B in  kg/m^3

xa=5*10^-3;   //Position 1 in m
xb=10*10^-3;  //Position 2 in m

D=3*10^-11;   //Diffusion coefficient in m^2/s

J=-D*(Ca-Cb)/(xa-xb);
printf("\nDiffusion flux is %.1f * 10^-9 kg/m^2-s",J/10^-9);

//End