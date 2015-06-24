
// Given:-
// The combustion equation is
// CH4 + 2O2 + 7.52N2  ---  CO2 + 2H2O + 7.52N2

// Part(a)
// With enthalpy of formation values from Table A-25
hfbarCO2 = -393520                                                              // in kj/kmol
hfbarH2O = -285830                                                              // in kj/kmol
hfbarCH4 = -74850                                                               // in kj/kmol
M = 16.04                                                                       // molar mass of CH4 in kg/kmol
// Calculations
hRPbar = hfbarCO2 + 2*hfbarH2O - hfbarCH4                                       // in kj/kmol
hRP = hRPbar/M                                                                  // in kj/kg
// Result
printf( ' Part(a)the enthalpy of combustion of gaseous methane,  fuel is: %f kJ/kg.',hRP)

// Part(b)
hfbarCO2 = -393520                                                              // in kj/kmol
hfbarH2O = -241820                                                              // in kj/kmol
hfbarCH4 = -74850                                                               // in kj/kmol
// Calculations
hRPbar = hfbarCO2 + 2*hfbarH2O - hfbarCH4                                       // in kj/kmol
hRP = hRPbar/M                                                                  // in kj/kg
// Result
printf( ' Part(b)the enthalpy of combustion of gaseous methane, fuel is:  %f kJ/kg',hRP);

// Part(c)
// From table A-23
deltahbarO2 = 31389-8682                                                        // in kj/kmol
deltahbarH2O = 35882-9904                                                       // in kj/kmol
deltahbarCO2 = 42769-9364                                                       // in kj/kmol

// Using table A-21
// Calculations
// function cpbar = f(T)
T=298                                                                           // in kelvin

function T = cpbar(T)
    T = (3.826 - (3.979e-3)*T + 24.558e-6*T**2 - 22.733e-9*T**3 + 6.963e-12*T**4)*8.314
endfunction

deltahbarCH4 = intg(298,1000,cpbar)
var = deltahbarCH4(1)

hRPbar = hRPbar + (deltahbarCO2 + 2*deltahbarH2O - var -2*deltahbarO2)
hRP = hRPbar/M                                                                  // in kj/kg
// Result
printf( ' Part(c)the enthalpy of combustion of gaseous methane, per kg of fuel is %.f kJ/kg',hRP);
