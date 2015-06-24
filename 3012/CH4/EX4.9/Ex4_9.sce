// Given:-
P1 = 20.0                             // pressure in supply line in bars
P2 = 1.0                              // exhaust pressure in bar
T2 = 120.0                            // exhaust temperature in degree celcius

// from table A-3 at 20 bars
hf1 = 908.79                        // Enthalpy in kj/kg
hg1 = 2799.5                        // Enthalpy in kj/kg

// from table A-4, at 1 bar and 120 degree celcius
h2 = 2766.6                         // in kj/kg
h1 = h2                             // from throttling process assumption


// Calculations:-
x1 = (h1-hf1)/(hg1-hf1)

// Results:-
printf( ' The quality of the steam in the supply line is %.2f',x1)


// Note : rounding off error. please check manually.
