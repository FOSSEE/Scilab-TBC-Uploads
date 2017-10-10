clc
// Example 1.6.py
// Consider the flow through a rocket engine nozzle. Assume that the gas flow 
// through the nozzle in an isentropic expansion of a calorically perfect gas.
// In the combustion chamber, the gas which results from the combustion of the 
// rocket fuel and oxidizer is at a pressure and temperature of 15 atm and 
// 2500 K, respectively, the molecular weight and specific heat at constant 
// pressure of the combustion gas are 12 and 4157 J/kg K, respectively. The gas
// expands to supersonic speed through the nozzle, with temperature of 1350 K at
// the nozzle exit. Calculate the pressure at the exit.


// Variable declaration
pc = 15.0          // pressure combustion chamber (atm)
Tc = 2500.0        // temperature combustion chamber (K)
mol_wt = 12.0      // molecular weight (gm)
cp = 4157.0        // specific heat at constant pressure (J/Kg/K)

Tn  = 1350.0       // temperature at nozzle exit (K)

// Calculations 
R = 8314.0/mol_wt  // gas constant = R_prime/mo_wt, R_prime = 8314 J/K
cv = cp - R        // specific heat at constant volume (J/Kg/K)
gamma1 = cp/cv      // ratio of specific heat

pn_by_pc = (Tn/Tc** gamma1/(gamma1-1)) // ratio of pressure for isentropic process** pn/pc

pn = pc * pn_by_pc // pn = pc * pn/pc

// Result 
printf("\n Pressure at the exit is %.3f atm", pn)

