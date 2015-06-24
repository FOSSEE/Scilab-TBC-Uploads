clc();
clear;
// To calculate the relative permeability of iron
H=6.5*10^-4;    //magnetic field in T
M=1.4;     //field with iron
chi=M/H;
mew_r=1+chi;
printf("relative permeability of iron is %f",mew_r);

//answer given in the book is wrong
