clc;clear;
//Example 1.7
//Calculation of the total energy 

//given values
r=0.528*10^-10;//radius of the orbit in m
q=-1.6*10^-19;//charge on electron in C
Q=1.6*10^-19;//charge on Hydrogen nucleus in C
Eo=8.854*10^-12;//permittivity in free space in F/m

//calculation
E=(q*Q)/(8*3.14*Eo*r);//
disp(E,'The total energy(in J) is');
E1=E/(1.6*10^-19);//
disp(E1,'The total energy(in eV) is')