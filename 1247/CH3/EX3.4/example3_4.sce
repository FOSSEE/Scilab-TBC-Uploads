clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.4
// Page 62
printf("Example 3.4, Page 62 \n \n");

// solution

m = 1 //[kg] dry neem leaves (basis)
m1 = .01/100 //[kg] beta cartene content of leaves
Ex = (m1*100)/.41 //[kg] extract quantity
Tc1 = Ex*.155 //[kg] Alpha Tocopherol in the extract
Tc2 = .46/100 //[kg] Alpha Tocopherol in the neem leaves
R = (Tc1*100)/Tc2 // recovery of Alpha Tocopherol 
printf("(a) \n \nmass of extract phase per kg of dry leaves is "+string(Ex)+" kg \n \n \n(b) \n \npercent recovery of Alpha Tocopherol is "+string(R)+".")
