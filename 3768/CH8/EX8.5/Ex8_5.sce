//Example number 8.5, Page number 171

clc;clear;
close;

//Variable declaration
Is=1.96*10**6;        //saturation magnetisation(amp/m)
a=3*10**-10;        //cube edge(m)
mewB=9.27*10**-24;   //bohr magneton(amp/m**2)
n=2;       //number of atoms
//Calculation
N=n/(a**3);      
mew_bar=Is/(N*mewB);     //average number of bohr magnetons(bohr magneton/atom)
//Result
printf("average number of bohr magnetons is %.3f bohr magneton/atom",mew_bar)
