//To calculate the bond energy for NaCl molecule
e = 1.602*10^-19;
EA = 3.65;     //electron affinity of Cl, eV
IP = 5.14;      //ionisation energy of Na, eV
epsilon0 = 8.85*10^-12;
r0 = 236;      //equilibrium distance, pm
r0 = r0*10^-12;     //equilibrium distance, m
V = (-e^2)/(4*%pi*epsilon0*r0);       //potential energy, J
V = V/e;       //potential energy, eV
Ue = V;
BE = -Ue - IP + EA;       //bond energy, eV
printf("bond energy for NaCl molecule is %5.2f eV",BE);
