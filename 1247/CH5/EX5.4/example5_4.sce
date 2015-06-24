clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.4
// Page 206
printf("Example 5.4, Page 206 \n \n");

// solution

// using table 5.3
// .25 kg/s toulene heated from 290.15K to 350.15K
qm = .25/92  // kmol/s
// reference 7
fi = 2.717*10^-3*[1.8083*(350.15-290.15) + 812.223*10^-3*(350.15^2-290.15^2)/2 - 1512.67*10^-6*(350.15^3-290.15^3)/3 + 1630.01*10^-9*(350.15^4-290.15^4)/4]
printf(" Heat required to be added to toulene = "+string(fi)+" kW.")
