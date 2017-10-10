clc
// Example 5.3.py
// Consider a rocket engine burning hydrogen and oxygen combustion chamber temper-
// ature and pressure are 3571 K and 25 atm, respectively. The molecular weight of
// the chemically reacting gas in the combustion chamber is 16.0 and gamma1 = 1.22.
// The pressure at the exit of the convergent-divergent rocket nozzle is 1.174*10^-2
// atm. The area of the throat is 0.4 m^2. Assuming a calorifically perfect gas, 
// calculate (a) the exit mach number (b) the exit velocity (c) the mass through the
// nozzle and (d) the area of the exit.

// Variable declaration
po = 25.0           // combustion chamber pressure (in atm)
To = 3571.0         // combustion chamber temperature (in K)
pe = 1.174e-2       // pressure at the exit of the nozzle (in atm)
Astar = 0.4         // throat area (in m^2)
gamma1 = 1.22        // ratio of specific heats
mol_wt = 16.0       // molecular weight (in gms)

// Calculations

// part (a)
Me = (2/(gamma1-1) *((po/pe**(gamma1-1)/gamma1) - 1)** 0.5) // Exit mach number

// part (b)
Te_by_To = (pe/po** (gamma1-1)/gamma1) // Te/To
Te = Te_by_To * To                     // exit temperature (in K)

R = 8314.0/mol_wt                      // gas constant (in J/Kg K)
ae = (gamma1*R*Te** 0.5)              // speed of sound at exit (in m/s)
ve = Me * ae                           // velocity at exit (in m/s)

// part (c)
rhoo = po*101325/R/To                            // density at reservoir (in Kg/m^3) 
rhostar_by_rhoo = (2.0/(gamma1+1)**1/(gamma1-1)) // rhostar/rhoo
rhostar = rhostar_by_rhoo * rhoo                 // rhostar, throat density (in Kg/m^3)

Tstar_by_To = 2.0/(gamma1+1)                      // Tstar/To
Tstar = Tstar_by_To * To                         // Tstar, throat temperature (in K)
astar = (gamma1*R*Tstar** 0.5)                  // speed of sound at throat (in m/s)
mass = rhostar*Astar*astar                       // mass flow rate at throat (in Kg/s)

// part (d)
rhoe = pe*101325/R/Te   // density at exit (in Kg/m^3)                         
Ae = mass/rhoe/ve       // exit area (in m^2)

// Results 

printf("\n Exit mach number %.2f", Me)

printf("\n Exit velocity %.2f m/s", ve)

printf("\n Mass flow rate %.2f Kg/s", mass)

printf("\n Area of the exit %.2f m^2", Ae)

