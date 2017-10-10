clear;
clc;
ml=0.98//*m0
mt=0.19//*m0
//rest mass m0 = 9.1*10^-31 kg

//Calculation
mn=6^(2/3)*(ml*mt^2)^(1/3)

mprintf("Density of states effective mass of electrons in silicon= %1.1f m0",mn)
