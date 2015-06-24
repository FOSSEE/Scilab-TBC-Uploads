
// Given:-
nCH4 = 1.00                                                                        // moles of methane in kmol
nO2 = 2.00                                                                         // moles of oxygen in kmol
T1 = 25.00                                                                         // in degree celcius
p1 = 1.00                                                                          // in atm
T2 = 900.00                                                                        // in kelvin
Rbar = 8.314                                                                       // universal gas constant
// The chemical reaction equation for the complete combustion of methane with oxygen is
// CH4 + 2O2   ---   CO2 + 2H2O

// Part(a)
// with enthalpy of formation values from table A-25
hfbarCO2 = -393520
hfbarH2O = -241820
hfbarCH4 = -74850
// Calculations
// with enthalpy values from table A-23
deltahbarCO2 = 37405-9364
deltahbarH2O = 31828-9904
Q = ((hfbarCO2 + deltahbarCO2)+2*(hfbarH2O + deltahbarH2O) - hfbarCH4) + 3*Rbar*(T1+273-T2)
// Result
printf( ' The amount of heat transfer in kJ is:  %.2f', Q)

// Part(b)
p2 = p1*(T2/(T1+273))                                                             // in atm
// Result
printf( ' The final pressure in atm is:  %.2f',p2)
