//Example 4_9
clc();
clear;
//To calculate the density of copper
r=0.1278*10^-9                    //units in meters
M=63.5                           //units in a.m.u
N=6.02*10^26                    //units in kg/mol
n=4
a=sqrt(8)*r
density=(n*M)/(N*a^3)
printf("density of copper is %.3f kg/m^3",density)
//in text book anser printed wrong as 893.66 correct answer is 8933.25
