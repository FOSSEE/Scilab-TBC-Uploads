clc
clear 
printf("example 2.11 page number 74\n\n")

//to find the pressure for solubility of CO2

absorbtion_coefficient=1.71    //in liters
molar_mass=44;
solubility=absorbtion_coefficient*molar_mass/22.4;   //in gm
pressure=8/solubility*101.3;

printf("pressure required = %f kPa",pressure)
