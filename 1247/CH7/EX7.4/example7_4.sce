clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.4
// Page 444
printf("Example 7.4, Page 444 \n \n");

// solution

// basis 1 mol of natural gas
// using table 7.7
H2O = [2*.894+3*.05+.019+5*(.004+.006)]*18  // g
Hv = H2O*2442.5/1000
NCV1 = 945.16-Hv
GCV = 945.16*1000/18.132
NCV = NCV1*1000/18.132
printf(" GCV = "+string(GCV)+" kJ/kg. \n NCV = "+string(NCV)+" kJ/kg.")
