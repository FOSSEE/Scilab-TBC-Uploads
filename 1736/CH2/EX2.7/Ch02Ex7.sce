// Scilab Code Ex2.7 : Page-69 (2006)
clc; clear;
chi_diff = 1;   // Electronegativity difference between the constituent of elements of solid
percent_ion = 100*(1-exp(-(0.25*chi_diff^2)));  // Percentage ionic character present in solid given by Pauling
printf("\nThe percentage ionic character present in solid = %2d percent ", percent_ion);

// Result 
// The percentage ionic character present in solid = 22 percent  
