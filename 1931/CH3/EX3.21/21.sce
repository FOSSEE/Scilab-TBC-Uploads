clc
clear
//INPUT DATA
d=9.6*10^2//density of crystal in Kg/m^3
AW=23//molecular weight of the crystal
N=6.023*10^26//Avagadro's number per Kg mol
a=4.3*10^-10//lattice constant in m

//CALCULATION
n=((d*N*a*a*a)/AW)//Number of atoms per unit cell of a crystal

//OUTPUT
printf('Number of atoms per unit cell of a crystal is %3.2f \n If n=2,the crystal system is body centered cubic.',n)

