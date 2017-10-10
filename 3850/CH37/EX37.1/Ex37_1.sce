
//To Calculate the Intensity of Magnetization of Bar Magnet

//Example 37.1

clear;

clc;

m=6.6*10^-3;//Mass of bar magnet (made of steel) in kg

rho=7.9*10^3;//Density of steel in kg/m^3

M=2.5;//Magnetic Moment of Bar Magnet in A-m^2

V=m/rho;//Volume of bar magnet in m^3

I=M/V;//Intensity of Magnetization in A/m

printf("Intensity of magnetization of bar magnet = %.1f*10^6 A/m",I*10^-6);
