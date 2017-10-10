clc
// Example 3.2.py
// Return to Example 1.6, Calculate the Mach Number and velocity at the exit of the rocket
// nozzle.

// Variable declaration from example 1.6
pc = 15.0          // pressure combustion chamber (atm)
Tc = 2500.0        // temperature combustion chamber (K)
mol_wt = 12.0      // molecular weight (gm)
cp = 4157.0        // specific heat at constant pressure (J/Kg/K)

Tn  = 1350.0       // temperature at nozzle exit (K)

// Calculations 
R = 8314.0/mol_wt  // gas constant = R_prime/mo_wt, R_prime = 8314 J/K
cv = cp - R        // specific heat at constant volume (J/Kg k)
gamma1 = cp/cv      // ratio of specific heat

pn_by_pc = (Tn/Tc** gamma1/(gamma1-1)) // ratio of pressure for isentropic process** pn/pc

Mn = (2/(gamma1-1)*((1/pn_by_pc**(gamma1-1)/gamma1) - 1)** 0.5) // Mach number at exit** from isentropic flow relation

an = (gamma1*R*Tn** 0.5)   // Speed of sound at exit (m/s)
Vn = Mn*an                  // Velocity at exit (m/s)


// Result 
printf("\n Mach number at the exit of the rocket nozzle is %.3f",(Mn))

printf("\n Velocity at the exit of the rocket nozzle is %.1f m/s",(Vn))

