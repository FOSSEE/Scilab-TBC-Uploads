clc;clear;
//Example 16.2
//calculation of no of atoms

//given values
a=4.3*10^-10;//edge of unit cell in m
d=963;//density in kg/m^3
M=23;//atomicmass of sodium in kg
N=6.02*10^26;//avogadro's number

//calculation
z=d*N*a^3/M;

disp(z,'no of atoms is');
