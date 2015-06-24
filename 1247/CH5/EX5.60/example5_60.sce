clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.60
// Page 320
printf("Example 5.60, Page 320 \n \n");

// solution

// basis 100 kg 96.1% H2SO4
// from table 5.64
m1SO3 = 78.4  // kg
m1H2O = 21.6
n1SO3 = m1SO3/80.063
n1H2O = m1H2O/18.015
// resultant sol has 23.2% H2SO4
m2SO3 = 19
m2H2O = 81
Mrsol = m1SO3*100/m2SO3
Mw = Mrsol-100
w = Mrsol-m1SO3/18.015  // kmol
HEosol = n1SO3*(-56940)+n1H2O*(-32657)  // kJ
HErsol = n1SO3*(-156168)+w-(-335)
HE = HErsol-HEosol  // kJ/kg original acid
C = 3.43  // kJ/kg K
dT = -HE/(Mrsol*C)
T = 291.15+dT  // K
printf(" Heat of dilution = "+string(HE)+" kJ/kg original solution \n \n Final T of resultant solution = "+string(T)+" K.")
