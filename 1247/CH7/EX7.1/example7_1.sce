clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.1
// Page 434
printf("Example 7.1, Page 434 \n \n");

// solution

// basis 100 kg as received coal
O2 = 18.04 //kg
nH2 = 2.79-(O2/8) //kg
printf("(a) \n \n Net H2 in coal = "+string(nH2)+" kg. \n \n \n (b) \n \n ")
cbW = 1.128*18 // kg 
printf("Combined water in the coal = "+string(cbW)+" kg. \n \n \n (c) \n \n ")
// Dulong's formula
GCV1 = 33950*(50.22/100) + 144200*nH2/100 + 9400*.37/100  // kJ/kg
printf("GCV by Dulongs formula = "+string(GCV1)+" kJ/kg. \n \n \n (d) \n \n ")
tH2 = 1.395  // kmol
wp = tH2*18 + 7
Hv = 2442.5*wp/100  // kJ/kg fuel
GCV2 = 23392*(1-.21-.07) // as of received coal
NCV = GCV2-Hv
printf("NCV of the coal = "+string(NCV)+" kJ/kg. \n \n \n (e) \n \n ")
// Calderwood eq
// Total C = 5.88 + .00512(B-40.5S) +- .0053[80-100*(VM/FC)]^1.55
C = 5.88 + .00512*(7240.8-40.5*.37)+.0053*[80-56.52]^1.55
printf("Total Carbon by Calderwood eq = "+string(C)+".")
