//Example 4_1
clc();
clear;
//To calculate the density of the germanium
n=8
a=5.62*10^-10                            //units in meters
M=710.59                     //atomic weight of Ge units in a.m.u
N=6.02*10^26                //units in kg/mol
Density=(n*M)/(a^3*N)
printf("Density of the germanium is %.0f kg/m^3",Density)
