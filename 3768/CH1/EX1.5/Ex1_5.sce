//Example number 1.5, Page number 11
clc;clear;
close;

//Variable declaration
rCs=0.165*10**-9;    //radius(m)
rCl=0.181*10**-9;    //radius(m)
MCs=133;    //atomic weight
MCl=35.5;   //atomic weight
N=6.02*10**26;           //Avagadro Number

//Calculation
a=2*(rCl+rCs)/sqrt(3);     //lattice constant(m)
M=(MCs+MCl)/N;       //mass of 1 molecule(kg)
V=a**3;    //volume of unit cell(m**3)
rho=M/V;    //density of CsCl(kg/m**3)

//Result
printf( "density of CsCl is %.3e kg/m**3",rho)
//answer in the book varies due to rounding off errors
