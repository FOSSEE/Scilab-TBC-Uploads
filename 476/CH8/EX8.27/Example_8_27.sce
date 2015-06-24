//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 27


clear;
clc;


//Given:
P = 93.30; //total pressure in kPa
T1 = 353; //(K)
T2 = 373; //(K)
Pa1 = 47.98; //Vapour pressure of water at 353 K (kPa)
Pb1 = 2.67; //Vapour pressure of liquid at 353 K (kPa)
Pa2 = 101.3; //Vapour pressure of water at 373 K (kPa)
Pb2 = 5.33; //Vapour pressure of liquid at 373 K (kPa)

//To calculate under three phase equilibrium:
//(a). The equilibrium temperature
P1 = Pa1+Pb1; //sum of vapour pressures at 353 K
P2 = Pa2+Pb2; //at 373 K

//Since vapour pressure vary linearly with temperature, so T at which P = 93.30 kPa
T = T1 + ((T2-T1)/(P2-P1))*(P-P1);
mprintf('(a). The equilibrium temperature is %f K',T);

//(b). The composition of resulting vapour
//At equilibrium temp:
Pa = 88.5; //vapour pressure of water (kPa)
Pb = 4.80; //vapour pressure of liquid (kPa)

//At 3-phase equilibrium, ratio of mol fractions of components is same as the ratio of vapour pressures
P = Pa+Pb; //sum of vapour pressures
y = Pa/P; //mole fraction of water
mprintf('\n The vapour contains %f mol percent water vapour',y*100);

//end