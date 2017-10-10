clc
// Example 5.6.py
// Consider a convergent divergent nozzle with an exit to throat area ratio of 3.
// A normal shock wave is inside the divergent portion at a location where the local
// area ratio is A/At = 2.0. Calculate the exit to reservoir pressure ratio.

// Variable declaration
Ae_by_At = 3.0 // ratio of exit to throat area

// Calculations

// from table A1 for A/At = 2.0
M1 = 2.2             // mach number in front the shock

// from table A2 for M1 = 2.2
M2 = 0.5471          // mach number behind the shock
po2_by_po1 = 0.6281  // stagnation pressure ratio accross the shock

// from table A1 for M2 = 0.5471
A2_by_A2star = 1.27  // A2/A2star
At_by_A2 = 1/2.0     // At/A2
Ae_by_A2star = Ae_by_At * At_by_A2 * A2_by_A2star //Ae/A2star = Ae/At * At/A2 * A2/A2star

// from table A1 for Ae/A2star = 1.905
Me = 0.32            // exit mach number
poe_by_pe = 1.074    // poe/pe

// po = po1 and poe = po2
pe_by_po = 1 / poe_by_pe * po2_by_po1 // pe/po = pe/poe * poe/po2 * po2/po1 * po1/po

// Results 
printf("\n Exit to reservoir pressure ratio is %.3f", pe_by_po)

