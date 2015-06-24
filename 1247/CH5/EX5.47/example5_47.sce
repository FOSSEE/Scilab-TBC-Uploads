clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.47
// Page 300
printf("Example 5.47, Page 300 \n \n");

// solution
// basis 100(m1) kg 46% sol
NaOH = 46  // kg
H2O = 54  // kg
m2 = NaOH/.25
NaOHo = 25  // kg
H2Oo = 75  // kg
Hf1 = -453.138  // kJ/mol
Hf2 = -467.678  // kJ/mol
Hs = Hf2-Hf1
Hg = -Hs*1000*1.501
// using Appendix IV.1
Hw1 = 146.65
Hw2 = 104.9
Hadd = 84*(Hw1-Hw2)
H = Hg+Hadd
C1 = 3.55
T2 = 298.15+H/(184*C1)  // K
printf(" Final sol T = "+string(T2)+" K.")
