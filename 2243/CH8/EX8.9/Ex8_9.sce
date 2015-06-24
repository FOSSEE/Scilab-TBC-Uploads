clc();
clear;
//Given :
Na = 6.023*10^23 ; // Avogadro constant in atoms/mole
LE = 200 ; // liberated energy in MeV
mm = 235; // molar mass  of U 235 in gm/mole
// 1 eV = 1.6*10^-19 J , 1 MeV = 1.0*10^6 eV
RE = (Na*LE*1.6*10^-19*10^6)/mm ; //released energy in J
// 1 cal = 4.187 J 
EC = RE/4.187 ; // energy in cal
//Burning 1 kg of coal releases 7000 K cal of energy 
Q1 = EC/(7000*10^3); // Quantity of Coal in Kg
//Exploding 1 kg of TNT releases 1000 cal of energy
Q2 = EC/1000; // Quantity of TNT in kg
printf("Energy released : %.0f x 10^10 cal \n",EC*10^-10);
printf(" %.1f tonnes of Coal\n",Q1*10^-3);
printf(" %.0f tonnes of TNT\n",Q2*10^-3);
// Results obtained differ from those in textbook , because approximate values were considered in textbook.
