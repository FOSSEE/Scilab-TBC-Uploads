clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.13
// Page 383
printf("Example 6.13, Page 383 \n \n");

// solution

Pw1 = 12.84 //Pa  v.p. of ice at 233.15K   (table 6.12)
P1 = 101325 //Pa
Hm = (Pw1/(P1-Pw1))   // kmol/kmol dry air
P2 = 801325 //Pa
Pw2 = P2*.0001267/(1+.0001267)
dp = -20.18 + 273.15 //K     from table 6.12
printf("Dew Point = "+string(dp)+"K.")
