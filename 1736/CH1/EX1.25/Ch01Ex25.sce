// Scilab Code Ex 1.25 Page-35 (2006)
clc; clear;
a_Cu = 3.61;    // Lattice constant of Cu, angstrom
a_Pd = 3.89;    // Lattice constant of Pd, angstrom

// For x = 20% of Pd
x = 0.20;   // Percentage of Pd in Cu-Pd alloy
a_Cu_Pd = ((1-x)*a_Cu + x*a_Pd);
printf("\nFor %2d percent of Pd in Cu-Pd alloy, a = %4.2f angstrom", x*100, a_Cu_Pd);

// For x = 40% of Pd
x = 0.40;   // Percentage of Pd in Cu-Pd alloy
a_Cu_Pd = ((1-x)*a_Cu + x*a_Pd);
printf("\nFor %2d percent of Pd in Cu-Pd alloy, a = %5.3f angstrom", x*100, a_Cu_Pd);

// For x = 60% of Pd
x = 0.60;   // Percentage of Pd in Cu-Pd alloy
a_Cu_Pd = ((1-x)*a_Cu + x*a_Pd);
printf("\nFor %2d percent of Pd in Cu-Pd alloy, a = %5.3f angstrom", x*100, a_Cu_Pd);

// For x = 80% of Pd
x = 0.80;   // Percentage of Pd in Cu-Pd alloy
a_Cu_Pd = ((1-x)*a_Cu + x*a_Pd);
printf("\nFor %2d percent of Pd in Cu-Pd alloy, a = %5.3f angstrom", x*100, a_Cu_Pd);

// Result
// For 20 percent of Pd in Cu-Pd alloy, a = 3.67 angstrom
// For 40 percent of Pd in Cu-Pd alloy, a = 3.722 angstrom
// For 60 percent of Pd in Cu-Pd alloy, a = 3.778 angstrom
// For 80 percent of Pd in Cu-Pd alloy, a = 3.834 angstrom 
