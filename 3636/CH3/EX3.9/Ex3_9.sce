clear;
clc;

Boron_impurity=10^18 //in cm^-3
Phosphorus_impurity=10^16 //in cm^-3

//Calculation
Density=Boron_impurity-(8*Phosphorus_impurity)

mprintf("Density of majority carriers(holes)= %1.1e cm^-3",Density)
