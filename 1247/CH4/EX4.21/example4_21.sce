clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.21
// Page 159
printf("Example 4.21, Page 159 \n \n");

// solution

// basis 1 tonne of pig iron
coke = 1000 //kg
flux = 400 //kg
Fe1 = 1000*.95 // Fe in pig iron
Fe2 = (112/160)*.8 // Fe available per kg of ore
ore = Fe1/Fe2 // kg
Si = .014*1000 //kg  //Si in pig iron
si1 = (60/28)*14 // silica present in pig iron
si2 = ore*.12 // silica in ore
si3 = .1*coke // silica in coke
si4 = si2+si3-si1 // silica in slag
alumina = ore*.08 // Al2O3 in ore = Al2O3 in slag
CaO = flux*(56/100)
slag = si4+alumina+CaO
printf("(a) \n \n Mass of slag made = "+string(slag)+" kg. \n \n \n(b) \n \n Mass of ore required = "+string(ore)+" kg. \n \n \n(c) \n \n Composition of slag : \n SiO2 = "+string(si4)+" kg \n Al2O3 = "+string(alumina)+" kg \n CaO = "+string(CaO)+" kg.  \n \n \n(d) \n \n")
C = .9*coke+(12/100)*flux-36 // total C available
// CO:CO2 = 2:1
C1 = C/3 // C converted to CO2
C2 = 2*C/3 // C converted to CO
O21 = C1*(32/12)+C2*(16/12) // O2 required for CO and CO2 formation
O22 = (32/28)*Si // O2 from SiO2
O23 = ore*(.8*48/160) // O2 from Fe2O3
O24 = flux*(32/100) // O2 from CaCO3
O25 = O21-O22-O23-O24 //kg O2 to be supplied
O26 = O25/32 //kmol
air = O26/.21 //kmol
V = air*22.414 //m^3
printf(" Volume of air to be supplied = "+string(V)+" m^3.")


