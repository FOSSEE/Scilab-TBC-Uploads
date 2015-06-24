// Given:-
p1= 40.0                                     // pressure in bar
T1= 400.0                                    // temperature in degree celcius
V1= 10.0                                     // velocity m/s

// At exit:-
p2= 10.0                                     // pressure in bar
V2= 665.0                                    // velocity in m/s
mdot= 2.0                                    // mass flow rate in kg/s

// From table A-4
h1= 3213.6                                   // snpecific enthalpy in kJ/kg
v2 = 0.1627                                  // specific volume at the exit in m^3/kg

// Calculation:-
h2 = h1 + ((V1**2-V2**2)/2)/1000             // snpecific enthalpy in kJ/kg
A2=(mdot*v2)/V2                              // Exit area

// Results:-
printf( ' The exit Area of the nozzle is %.4f m^2', A2)
