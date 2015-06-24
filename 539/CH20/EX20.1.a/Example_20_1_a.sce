//Example 20.1 Calculation of saturation magnetisation and flux density for Nickel

clear;
clc;

printf("Example 20.1\n");

b_m=9.27*10^-24; //ampere*m^2  (Bohr Magneton)

Na=6.023*10^23;  //atoms/mol  (Avogadro's No.)

d=8.9*10^6;  //g/m^3   (density)

uo=4*%pi*10^-7;  //Permitivity of free space

A=58.71;  //g/mol  (Atomic weigth of Nickel)

N=d*Na/A;  //No. of atoms per cubic meter

// M is saturation magnetisation
M=0.6*b_m*N;  //0.6= Bohr Magneton/atom

printf("\nSaturation Magnetisation is : %d Ampere/m",M);



// End