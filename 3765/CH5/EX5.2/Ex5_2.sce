clc
// Example 5.2.py
// A supersonic wind tunnel is designed to produce Mach 2.5 flow in the test section
// with standard sea level conditions. Calculate the exit area ratio and reservoir
// conditions necessary to achieve these design conditions.

// Variable declaration
Me = 2.5          // exit mach number
pe = 1.0          // sea level pressure (in atm)
Te = 288.0        // sea level temperature (in K) 
// Calculations

// from table A1 for Me = 2.5
Ae_by_Astar = 2.637        // Ae/Astar
po_by_pe = 17.09           // po/p 
To_by_Te = 2.25            // To/T 

po = po_by_pe * pe         // reservoir pressure (in atm)
To = To_by_Te * Te         // reservoir temperature (in K)

// Results
printf("\n Area ratio required %.3f", Ae_by_Astar)

printf("\n Reservoir pressure required %.2f atm", po)

printf("\n Reservoir temperature required %.1f K", To)

