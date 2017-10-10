//Calculate the Lattice energy of Sodium Chloride

//Example 20.2

clc;

clear;

n=8.4; //Integer between 8 and 12( For the repulsive term in the lattice)

NA=6.022*10^23; //Avogadro's number in mol^-1

mew=1.7476; //Madelung constant for the NaCl crystal lattice 

e=1.602*10^-19; //Charge on electron in C

epsilion=8.854*10^-12 //Molar extinction cofficient in C^2 N^-1 m^-2

r=2.81*10^-10;  //Sum of radii of Sodium ion and Chlorine ion in m

Vbar=-((NA*mew*e^2)/(4*%pi*epsilion*r))*(1-(1/n)); //Lattice energy in J mol^-1(conversion factor 1J=1N m)

U=-Vbar/1000;  //Lattice energy in kJ mol^-1

printf("Lattice energy of Sodium chloride = %.0f kJ mol^-1",U); 
