clc();
clear;
//Given :
Na = 6.023*10^23 ; // Avogadro constant atoms/mole
LE = 200 ; // liberated energy in MeV
mm = 235*10^-3; // molar mass of U 235 in gm/mole
p = 30/100 ; // conversion efficiency
// 1 eV = 1.6*10^-19 J , 1 MeV = 1.0*10^6 eV
RE = (Na*LE*1.6*10^-19*10^6)/mm ; //released energy in J per day
// 1 day = 24 hrs * 60 mins * 60 sec
P = RE/(24*60*60); // Power output in W per day
// 1 cal = 4.187 J 
EC = RE/4.187 ; // energy in cal
//Burning 1 kg of coal releases 7000 K cal of energy 
Q1 = EC/(7000*10^3); // Quantity of Coal in Kg per day
EP = p*P ; // electric power in W
printf(" %.0f tonnes of Coal\n",Q1*10^-3);
printf(" Electric power for 30 percent conversion efficiency : %.1f kW",EP*10^-3);
// Results obtained differ from those in textbook , because approximate values were considered in textbook.


