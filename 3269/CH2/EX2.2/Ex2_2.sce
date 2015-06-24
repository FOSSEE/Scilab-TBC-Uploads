// Example 2.2
clear all;
clc;
// Given data 
// Using the data given in the example 2.2
atwt_O16 = 15.99492;                      // Atomic weight of O-16 isotope
isoab_O16 = 99.759;                       // Abundance of O-16 isotope
atwt_O17 = 16.99913;                      // Atomic weight of O-17 isotope
isoab_O17 = 0.037;                        // Abundance of O-17 isotope
atwt_O18 = 17.99916;                      // Atomic weight of O-18 isotope
isoab_O18 = 0.204;                        // Abundance of O-18 isotope
// Calculation
atwt_O=(isoab_O16*atwt_O16 + isoab_O17*atwt_O17 + isoab_O18*atwt_O18)/100;
// Result
printf('\n Atomic Weight of Oxygen = %5.5f \n',atwt_O);

