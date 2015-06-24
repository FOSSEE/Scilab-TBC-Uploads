clc
clear
//INPUT DATA
Ef=2.1*1.6*10^-19//The fermi energy level in potassium at a particular temperature in J
m=9.11*10^-31//mass of electon in Kg
h=6.625*10^-34//plank's constant in m^2 Kg/sec

//CALCULATION
nc=(((8*m)/(h*h)*Ef)^(3/2)*(3.14/3))/10^28//ThE Number of free electrons per unit volume in potassium at the same temperature in electrons/m^3*10^28

//OUTPUT
printf('ThE Number of free electrons per unit volume in potassium at the same temperature is %3.3f*10^28 electrons/m^3',nc)
