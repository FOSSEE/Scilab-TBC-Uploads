clc
clear
//INPUT DATA
Ef=2.1*1.6*10^-19//fermi energy level in potassium in J
f1=0.99//fermi factor for 1st
f2=0.01//fermi factor for 2nd
f3=0.5//fermi factor for 3rd
T=300//temperature in K
e=1.6*10^-19//charge of electro in C
KB=1.38*10^-23//Boltzmann's Constant in m^2 Kg s^-2 k^-1

//CALCULATION
E1=(Ef+((KB*T)*(log(1-f1)-log(f1))))/e//The energy for probability of occupancy at 1st at which the 300k in eV
E2=(Ef+((KB*T)*(log(1-f2)-log(f2))))/e//The energy for 1st at which the probability of occupancy at 300k in eV
E3=(Ef+((KB*T)*(log(1-f3)-log(f3))))/e//The energy for 1st at which the probability of occupancy at 300k in eV

//OUTPUT
printf('The energy for probability of occupancy at 1st at which the T is %3.2f eV\n The energy for probability of occupancy at 2nd at which the T is %3.2f eV\n The energy for probability of occupancy at 1st at which the T is %3.1f eV',E1,E2,E3)
