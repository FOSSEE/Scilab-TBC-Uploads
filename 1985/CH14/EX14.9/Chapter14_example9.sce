clc
clear
//Input data
a=2.5*10^-10//Interatomic spacing in m
M=(1.8*10^6)//Magnetization in Wb/m^2
n=2//Number of atoms per unit cell in bcc crystal
e=1.6*10^-19//Electron charge in Columbs
m=9.1*10^-31//Mass of electron in kg
h=6.625*10^-34//Plancks constant in J.s

//Calculations
N=(n/a^3)//Number of atoms present per unit volume in m^-3
m1=(M/N)//Total magnetization produced per atom in A/m^2
b=(e*h)/(4*3.14*m)//Bohr magnetron
M1=(m1/b)//Magnetization produced per atom in Bohr magnetron

//Output
printf('The average magnetization contributed per atom is %3.6f Bohr magneton',M1)
