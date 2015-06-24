clc
clear
//Input data 
T=300;//The given temperature in K
k=1.38*10^-16;//Boltzmann constant in erg/molecule-deg 

//Calculations 
E=(3/2)*k*T;//The average Kinetic energy of a molecule in ergs 

//Output
printf('The Average Kinetic energy of a molecule of a gas at 300 K is K.E = %3.4g ergs ',E)
