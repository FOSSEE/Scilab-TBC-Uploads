clear;
clc;

// Illustration 9.8
// Page: 535

printf('Illustration 9.8 -  Page: 535\n\n');

// solution
// From example 9.7 
alpha = 0.891; 
// For bed length Z = 1.829
Z1 = 1.829; // [m]
LUB = (1-alpha)*Z1; // [length of unused bed, m]
// For this bed length 
tb1 = 139.7; // [min]
// If the bed length is increased to Z2 = 3 m
Z2 = 3; // [m]
// New break through time will be given by equation 9.64
tb2 = tb1*(Z2/Z1)*(1-LUB/Z2)/(1-LUB/Z1); // [min]

printf("The new time of breakthrough assuming constant LUB is %f minute.\n\n",tb2);