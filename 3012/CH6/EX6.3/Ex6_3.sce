// Given:-
T1 = 273.0                                // initial temperature of saturated vapor in kelvin
P2 = 0.7*(10**6)                          // final pressure in pascal

// From table A-10,
u1 = 227.06                               // in kj/kg

// minimum theoretical work corresponds to state of isentropic compression
// From table A-12,
u2s = 244.32                              // in kj/kg
 
// Calculations 
Wmin = u2s-u1

// Results
printf( ' The minimum theoretical work input required per unit mass of refrigerant is: %.2f kJ/kg',Wmin)
