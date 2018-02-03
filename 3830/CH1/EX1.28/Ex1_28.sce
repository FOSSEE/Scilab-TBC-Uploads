// Exa 1.28

clc;
clear;

// Given

// Limiting error for series and parallel combination of capacitors
c1 = 99; // Capacitor value in Mf
dc1 = 1; // Variation in capacitor value in Mf
c2 = 49; // Capacitor value in Mf
dc2 = 1; // Variation in capacitor value in Mf

// Solution

// C1 = c1(±) dc1;
// C2 = c2(±) dc2;
printf('For parallel combination, we have y = C1+C2 \n');
dY_parallel = dc1 + dc2;
printf(' Limiting error for parallel combination = (±) %d Mf \n',dY_parallel);    
printf(' For series combination, we have 1/y = 1/C1+1/C2 \n');
Yseries = c1*c2/(c1+c2);
dYseries = (-dc1+c1)*(-dc2+c2)/(c1+c2-dc1-dc2);
dY = Yseries - dYseries;
printf(' Limiting error for series combination = (±) %.3f Mf \n',dY);

//The answer provided in the textbook is wrong
