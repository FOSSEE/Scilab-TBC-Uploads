clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.37
// Page 276
printf("Example 5.37, Page 276 \n \n");

// solution

fi3 = 15505407  // kJ/h
lv = 296.2  // from table 5.6
Ht = 17131551  // kJ/h
r = Ht/lv  // kg/h
printf(" Downtherm circulation rate = "+string(r)+" kg/h.")
