
clc
// Given that
b_m=9.27*10^-24 // Bohr Magneton in ampere*m^2 
Na=6.023*10^23  //Avogadro's Number
d=8.9*10^6  // density in g/m^3  
uo=4*%pi*10^-7  //Permittivity of free space
A=58.71  // Atomic weight of Nickel g/mol 
printf("Example 18.1\n")
N=d*Na/A  //No. of atoms per cubic meter
M=0.6*b_m*N  //0.6= Bohr Magneton/atom
printf("\n Part A:")
printf("\n Saturation Magnetization is %.1e Ampere/m",M)
M=0.6*b_m*N  //0.6= Bohr Magneton/atom
printf("\n\n Part B:")
B=uo*M
printf("\n Saturation Flux Density is %.2f Tesla\n",B);

