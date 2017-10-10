clc
// Example 5.4.py
// Consider the flow through a convergent-divergent duct with an exit to throat area
// ratio of 2. The reservoir pressure is 1 atm, and the exit pressure is 0.95 atm.
// Calculate the mach numbers at the throat and at the exit.

// Variable declaration
po = 1.0           // reservoir pressure (in atm)
pe = 0.95          // pressure at the exit (in atm)
Ae_by_At = 2.0  // ratio of exit to throat area

// Calculations
// from table A1 for po/pe = 1.053
Me = 0.28           // mach number at exit
Ae_by_Astar = 2.17  // nearest entry

At_by_Astar = 1 / Ae_by_At * Ae_by_Astar // At/Astar = At/Ae * Ae/Astar

// from table A1 for At/A* = 1.085
Mt = 0.72           // mach number at throat


// Results 
printf("\n Mach number at exit %.2f", Me)

printf("\n Mach number at throat %.2f", Mt)

