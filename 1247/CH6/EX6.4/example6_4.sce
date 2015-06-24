clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.4
// Page 355
printf("Example 6.4, Page 355 \n \n");

// solution

// basis 0.625 l/s of MEA solution
c = 3.2 //M  conc of MEA
M = 61 // molar mass of MEA
C = M*c //g/l  conc of MEA in sol
MEAin = c*.625*3600/1000 // kmol/h
CO2diss = .166*7.2 //kmol/h    CO2 dissolved in lean MEA
v = 26.107 //m^3  sp. vol of gas at 318K and 101.3kPa  (table 7.8)
qv = 1000/v //kmol/h 
CO2in = qv*.104 // moles of CO2 in inlet gas
CO2freegas = qv - CO2in
//outgoing has 4.5% CO2
GASout = CO2freegas/(1-.0455) //kmol/h
CO2abs = qv-GASout
CO2 = CO2diss + CO2abs 
CO2conc = CO2/MEAin //kmol/kmol MEA
printf("Concentration of dissolved CO2 in the solution leaving the tower = "+string(CO2conc)+"kmol/kmol of MEA.")
