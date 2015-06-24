clc
clear
//Input data
a=(1*10^-10)//Width of the potential well in m
m=(9.1*10^-31)//Mass of the electron in kg
h=(6.625*10^-34)//Plancks constant in Js

//Calculations
x=6.24150934*10^18//1 Joule in eV
E1=((h^2*1^2)/(8*m*a^2))*x//The energy of the first excited state in eV
E2=((h^2*2^2)/(8*m*a^2))*x//The energy of the second excited state in eV
E3=((h^2*3^2)/(8*m*a^2))*x//The energy of the third excited state in eV

//Output
printf('The energy of the first excited state is %3.3f eV \n The energy of the second excited state is %3.3f eV \n The energy of the third excited state is %3.3f eV',E1,E2,E3)
