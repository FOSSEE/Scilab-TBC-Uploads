clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.3
// Page 61
printf("Example 3.3, Page 61 \n \n");

// solution

m = 100 //[kg] babul bark (basis)
m1 = 5.8 //[kg] moisture
m2 = 12.6 //[kg] Tannin
m3 = 8.3 //[kg] soluble non tannin organic material
m4 = m-m1-m2-m3 // [kg] Lignin
// lignin content remains unaffected during leaching
m5 = 100-.92-.65 // [kg lignin/kg dry residue]
x = (m4*100)/m5 // [kg]
T1 = x*.0092 //[kg] Tannin present in residue
T2 = m2 - T1 // [kg] Tannin recovered
T = (T2/m2)*100 
printf("Percentage of Tannin recovered during leaching is "+string(T)+".")
