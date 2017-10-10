//Example number 3.12, Page number 50
clc;clear;
close;

//Variable declaration
C=0.494*10**-9;      //height(m)
a=0.27*10**-9;      //distance(m)
M=65.37;      //atomic weight
N=6.02*10**26;    //avagadro number
//Calculation
V=3*sqrt(3)*a**2*C/2;      //volume of cell(m**3)
m=6*M/N;
rho=m/V;      //density of Zn(kg/m**3)
//Result
printf("volume of cell is %.3e m**3",V)
printf("\n density of Zn is %.1f kg/m**3",rho)
//answer in the book is wrong
