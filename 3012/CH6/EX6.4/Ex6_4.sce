// Given :-
Qdot = -1.2                          // in kilo watt
Tb = 300.0                           // in kelvin
Tf = 293.0                           // in kelvin
// Calculations

// Part (a)
// From entropy balance 
sigmadot = -Qdot/Tb

// Part(b)
// From entropy balance 
sigmadt = -Qdot/Tf

// Results
printf( ' The rate of entropy production with gearbox as system is %f kw/k',sigmadot)
printf( ' The rate of entropy production with gearbox + sorrounding as system is %f kw/k',sigmadt)
