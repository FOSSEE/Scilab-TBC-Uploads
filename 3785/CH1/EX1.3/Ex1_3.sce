// Example 1_3
clc;funcprot(0);
// Given data
// From table 1.6
// Conversion between EES and SI units
ft=3.048*10^-1;// Conversion of EES uint of foot to SI unit value(m)
acre=4.048*10^3;// Conversion of EES uint of acre to SI unit value(m^2)

// Calculation
acreft=1*acre*ft;// m^3
printf("\n%0.0f cubic meters of water are there in one acre-foot",acreft);
