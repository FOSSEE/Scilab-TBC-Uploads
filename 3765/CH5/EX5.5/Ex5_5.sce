clc
// Example 5.5.py
// Consider a convergent divergent duct with an exit to throat area ratio of 1.6. 
// Calculate the exit to reservoir pressure ratio required to achieve sonic flow
// at the throat, but subsonic flow everywhere else.

// Variable declaration
Ae_by_At = 1.6  // ratio of exit to throat area

// Calculations

// since M = 1 at the throat Mt = Astar
// Ae/At = Ae/Astar = 1.6

// from table A1 for Ae/Astar = 1.6
po_by_pe = 1.1117       // po/pe
pe_by_po = 1/po_by_pe   // pe/po


// Results 
printf("\n Exit to reservoir required pressure ratio is %.1f", pe_by_po)

