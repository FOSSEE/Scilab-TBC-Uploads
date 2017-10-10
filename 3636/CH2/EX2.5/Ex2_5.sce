clear;
clc;
Cs=5*10^16 //impurity concentration in solid in atoms/cm^3
ks=0.35 //segregation coefficient 
d=2.33 //density of Si in g/cm^3
Na=6.02*10^23 // Avagadro Number in mol^-1
Si=31 //weight of Si
loadSi=4000 //initial load in gm

//Calculation
Cl=Cs/ks //impurity concentration in liquid
V=loadSi/d //volume of the melt in cm^3
Nummber_of_atoms=Cl*V //in atoms
Wt=(Cl*V*Si)/(Na)

mprintf("(a)Cl= %1.2e cm^-3\n",Cl)
mprintf("(b)Wt of P= %.3e g",Wt) //The answers vary due to round off error

