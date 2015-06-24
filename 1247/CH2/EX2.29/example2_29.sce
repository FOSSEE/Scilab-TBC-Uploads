clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.29
// Page 45
printf("Example 2.29, Page 45 \n \n");

// solution

//Ti-Tf = mu*(Pi-Pf)
Pi = 20.7 //[bar]
Pf = 8.7 // [bar]
mu = 1.616 //[K/bar]
Ti = 355.15 //[K]
Tf = Ti-mu*(Pi-Pf)
printf("Outlet temperature is "+string(Tf)+" K")
