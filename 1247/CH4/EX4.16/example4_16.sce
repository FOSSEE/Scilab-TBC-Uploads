clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.16
// Page 144
printf("Example 4.16, Page 144 \n \n");

// solution

// basis : 1day operation
// NaCl = Na+ + Cl-
//H2O = H+ + OH-
//Na+ + OH- = NaOH
//H+ + e = (1/2)H2
//Cl- - e = (1/2)Cl2
E = (15000*3600*24)/96485 // faraday/day   Total energy passed thrrough cell
NaOH = (15000*3600*24*40)/(96485*1000) //[kg/day] theoretical NaOH
eff = (514.1/NaOH)*100 // current efficiency
Cl2 = (35.5/40)*514.1
H2 = (456.3*2)/(35.5*2)
//40 g NaOH = 58.5g NaCl
consNaCl = (58.5/40)*514.1 // NaCl consumed
Tliquor = 514.1/.11 //[kg/day]  total cell liquor
remNaCl = 514.1*1.4
totalNaCl = consNaCl+remNaCl
Fbrine = totalNaCl/.266 //feed rate of brine
consH2O = (18/40)*514.1
lossH2O = Fbrine-Tliquor-consH2O
printf("(a) \n \n Current efficiency of the cell = "+string(eff)+" percent. \n \n \n(b) \n \n Cl2 produced = "+string(Cl2)+" kg/day \n H2 produced = "+string(H2)+" kg/day\n \n \n(c) \n \n loss of water = "+string(lossH2O)+" kg/day")
