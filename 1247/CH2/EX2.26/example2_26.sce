clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.26
// Page 43
printf("Example 2.26, Page 43 \n \n");

// solution
m = 6.5065 //[g] mixture (basis)
Pv = 2.175 //[kPa] V.P. of water over KOH
Pa = 102.5-2.175 //[kPa] Partial P of n-butane and 1butene
V = 415.1*10^-3 //[l]
R = 8.314472
T = 296.4 //[K]
n = (Pa*V)/R*T // moles of butene and butane
n1 = n*.431 // n-butane
m1 = n1*58 // [g]
n2 = n-n1 // 1 butene
m2 = n2*56 //[g]
m3 = m-m1 // [g] furfural
n3 = m3/96
printf("component        mol percent        mass percent \nn-Butane         "+string(n1/n*100)+"               "+string(m1/m*100)+" \n1-Butene         "+string(n2/n*100)+"               "+string(m2/m*100)+" \nFurfural        "+string(n3/n*100)+"          "+string(m1/m*100)+"")
