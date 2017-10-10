clear;
clc;
Na=6.02*10^23 // Avagadro Number in mol^-1
AtWt=28.09 //in g/mole
Density=5*10^22 //in atoms/cm^-3

//Calculation
DensityPerUnitVolume=(Density*AtWt)/(Na)

mprintf("Density per unit volume= %1.2f g cm^-3",DensityPerUnitVolume)
