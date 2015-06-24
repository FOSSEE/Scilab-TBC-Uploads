clear;
clc;

// Example: 4.3
// Page: 121

printf("Example: 4.3 - Page: 121\n\n");

// Solution

//*****Data*****//
// 2H2(g) + O2(g) ---------------> 2H2O .....................(1)
deltaH1 = -241.8*2;// [kJ/gmol H2]
// C(graphite) + O2(g) =---------> CO2(g) ...................(2)
deltaH2 = -393.51;// [kJ/gmol C]
// CH4(g) + 2O2(g) ---------------> CO2(g) + 2H2O(l) ........(3)
deltaH3 = -802.36;// [kJ/mol CH4]
//*************//

// For standard heat of formation of methane, (a) + (b) - (c)
// C + 2H2 ------------------------> CH4
deltaHf = deltaH1 + deltaH2 - deltaH3;// [kJ/gmol]
printf("The standard heat of formation of methane is %.2f kJ/gmol\n",deltaHf);