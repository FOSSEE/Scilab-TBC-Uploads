// Example 4.3
clear all;
clc;

// Given data
power = 3300;         // Reactor power in MW
time = 750;           // Reactor operation time in days
amt_UO2 = 98;         // Amount of Uranium dioxide (UO2) in metric tons
atwt_U = 238;         // As the enrichment of Uranium-235 is 3 w/o the majority portion is Uranium-238
molwt_O = 16;          // Molecular weight of Oxygen


// 1.
amt_U = amt_UO2*atwt_U/(atwt_U+2*molwt_O);  // Amount of uranium in tonne
total_burnup = power*time;                  // Total burnup in MWd
// Calculation 
specific_burnup = total_burnup/amt_U;
// Result
printf(" \n Specific burnup = %3.2f MWd/tonne \n",specific_burnup);

// 2.
// Due to fission of 1.05 g of Uranium-235, 1 MWd of energy is released.
m = 1.05;
P = 10^6;
maxth_burnup = P/m;                         // Theoritical maximum burnup 
// Calculation of Fractional burnup
bet = specific_burnup/maxth_burnup;
// Result
printf(" \n Fractional burnup = %3.2f percent \n",bet*100);
// Due to approximation of specific burnup value, there is a slight change in fractional burnup value as compared to the textbook value.
