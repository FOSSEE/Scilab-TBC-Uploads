//Example 4_8
clc();
clear;
//To calculate the number of atoms per unit cell
a=2.9*10^-10                      //units in meters
M=55.85                         //units in kg/m^3
density=7870                   //units in kg/m^3
N=6.02*10^26                  //units in kg/mol
n=(a^3*density*N)/M
printf("number of atoms %.0f",n)
