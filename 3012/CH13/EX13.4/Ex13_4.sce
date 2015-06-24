
// Given:-
// The balanced chemical equation for complete combustion with the theoretical amount of air is obtained from the solution to Example 13.1 as
// C8H18 +12.5O2 + 47N2 ---- 8CO2 + 9H2O + 47N2
// From tabel A-25
hRbar = -249910                                                                 // in kj/kmol
mfdot = 1.8e-3                                                                  // mass flow rate of liquid octane in kg/s
M = 114.22                                                                      // molar mass of octane
Wcvdot = 37                                                                     // power output of the engine in kw

// Calculations
// With enthalpy of formation values for CO2 and H2O(g) from Table A-25, and enthalpy values for N2, H2O, and CO2 from Table A-23
hpbar = 8*(-393520 + (36876 - 9364)) + 9*(-241820 + (31429 - 9904)) + 47*((26568 - 8669))
nFdot = mfdot/M                                                                 // molar flow rate of the fuel in kmol/s
Qcvdot = Wcvdot + nFdot*(hpbar-hRbar)                                           // in kw

// Result
printf( ' The rate of heat transfer from the engine, in kW is:  %.2f',Qcvdot)
