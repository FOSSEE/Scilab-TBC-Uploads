clc
// Example 5.1.py
// Consider the subsonic-supersonic flow through a convergent-divergent nozzle. The
// reservoir pressure and temperature are 10 atm and 300 K, repectively. There are 
// two locations in the nozzle where A/Astar = 6, one in the convergent section and
// the other in the divergent section. At each location calculate M, p, T, u.

// Variable declaration
po = 10.0         // reservoir pressure (in atm)
To = 300.0        // reservoir temperature (in K)
A_by_Astar = 6.0  // area ratio
gamma1 = 1.4       // ratio of specific heat
R = 287.0         // gas constant (in J/ Kg K)

// Calculations

// from table A1 for subsonic flow with A/Astar = 6.0
Msub = 0.097              // mach number in converging section
po_by_p = 1.006           // po/p in converging section
To_by_T = 1.002           // To/T in converging section

psub = 1 / po_by_p * po       // pressure (in atm) in converging section
Tsub = 1 / To_by_T * To       // temperature (in K) in converging section
asub = (gamma1*R*Tsub** 0.5) // speed of sound (in m/s) in converging section
usub = Msub*asub              // velocity (in m/s) in converging section

// from table A1 for supersonic flow with A/Astar = 6.0
Msup = 3.368              // mach number in diverging section
po_by_p = 63.13           // po/p in diverging section
To_by_T = 3.269           // To/T in diverging section

psup = 1 / po_by_p * po       // pressure (in atm) in diverging section
Tsup = 1 / To_by_T * To       // temperature (in K) in diverging section
asup = (gamma1*R*Tsup** 0.5) // speed of sound (in m/s) in diverging section
usup = Msup*asup              // velocity (in m/s) in diverging section


// Results
printf("\n Converging section")
printf("\n M = %.3f", Msub)

printf("\n p = %.2f atm", psub)

printf("\n T = %.1f K", Tsub)

printf("\n u = %.2f m/s", usub)


printf("\n Divering section")
printf("\n M = %.3f", Msup)

printf("\n p = %.4f atm", psup)

printf("\n T = %.2f K", Tsup)

printf("\n u = %.2f m/s", usup)

