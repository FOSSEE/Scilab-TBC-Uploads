clc
clear
//INPUT DATA
a=1.5*10^-10//each side of cubicalbox in m
n1=1//for lowest energy
n2=1//for lowest energy
n3=1//for lowest energy
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
m=9.11*10^-31//mass of electron in Kg
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
n=(n1^2+n2^2+n3^2)//total value of n
E=((n*h^2)/(8*m*a^2*e))//The lowest energy of electron ina cubical box in eV

//OUTPUT
printf('The lowest energy of electron ina cubical box is %3.2f in eV',E)
