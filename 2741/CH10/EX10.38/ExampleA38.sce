clc
clear
//Page number 487
//Input data 
e=8.5*10^28;//The given energy density of electrons in copper in electrons/m^3 
k=1.38*10^-23;//The boltzmann constant in J/K 
h=6.62*10^-34;//Planks constant in J.s 
m=9.1*10^-31;//The given mass of electrons in kg 
pi=3.14;//The mathematical constant of pi 

//Calculations 
E=(((3*e)/pi)^(2/3))*(h^2)*(1/8)*(1/m);//The fermi energy for copper in J 
EF=E/(1.6*10^-19);//The fermi energy for copper in eV 

//Output 
printf('The fermi energy for copper at absolute zero is  %3.3f eV ',EF)

