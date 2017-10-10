clear;
clc;
//Atomic weigths
Si=28.1 
Ga=69.7
As=74.9
Na=6.02*10^23 // Avagadro Number in mol^-1
//(a)Si
a=5.43*10^-8 //in cm
n=8 //no. of atoms/cell

//(b)GaAs
a1=5.65*10^-8 //in cm

//Calculation 
N=8/a^3 //Atomic Concentration in atoms/cc
N1=4/a1^3 //Atomic Concentration in atoms/cc
Density=(N*Si)/(Na)
Density1=(N1*(Ga+As))/(Na)

mprintf("Density of Si= %1.2f g/cm^3\n",Density)
mprintf("Density of GaAs= %1.2f g/cm^3",Density1)
