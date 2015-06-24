clc
clear
//INPUT DATA
a=3.61*10^-10//lattice constant of copper which is Fcc crystal in m
x=1*10^-18//average displacement of the electrons relative to the nucleus in m
z=29//atomic number of copper
n=4//number of atoms per unit cell in FCC crystal
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
ne=((n*z)/(a*a*a))//number of electrons in electrons/m^3 
P=(ne*e*x)/(10^-7)//The electron polarisation in C/m^2 *10^-7

//OUTPUT
printf('The electron polarisation is %3.3f*10^-7 in C/m^2',P)
