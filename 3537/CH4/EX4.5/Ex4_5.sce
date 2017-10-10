//Example 4_5
clc();
clear;
//To calculate the density
n=8
a=5.6*10^-10                        //units in meters
M=710.59                           //units in a.m.u
N=6.02*10^26                      //units in kg/mol
Density=(n*M)/(a^3*N)
printf("Density is %.0f kg/m^3",Density)
