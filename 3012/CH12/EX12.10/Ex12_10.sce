
// Given :-
AV1 = 150.0                                                                       // entry volumetric flow rate in m^3/min
T1 = 10.0                                                                         // entry temperature in degree celcius
psi1 = 0.8                                                                       
T2 = 30.0                                                                         // exit temperature in degree celcius
p = 1.0                                                                           // in bar

// Part(a)
Rbar = 8314.0                                                                     // universal gas constant
Ma = 28.97                                                                        // molar mass of air
// The specific enthalpies of the dry air are obtained from Table A-22 at the inlet and exit temperatures T1 and T2, respectively:
ha1 = 283.1                                                                       // in kj/kg
ha2 = 303.2                                                                       // in kj/kg
// The specific enthalpies of the water vapor are found using hv  hg and data from Table A-2 at T1 and T2, respectively:
hv1 = 2519.8                                                                      // in kj/kg
hv2 = 2556.3                                                                      // in kj/kg
// From table A-2
pg1 = 0.01228                                                                     // in bar
// Calculations
pv1 = psi1*pg1                                                                    // the partial pressure of the water vapor in bar
pa1 = p-pv1
va1 = (Rbar/Ma)*(T1+273)/(pa1*10**5)                                              // specific volume of the dry air in m^3/kg
madot = AV1/va1                                                                   // mass flow rate of the dry air in kg/min
omega = 0.622*(pv1/(p-pv1))                                                       // humidity ratio
Qcvdot = madot*((ha2-ha1)+omega*(hv2-hv1))                                        // in kj/min
// Result
printf( 'Rate of heat transfer, in kJ/min is:  %.2f',Qcvdot);

// Part(b)
// From Table A-2 at 30C
pg2 = 0.04246                                                                     // in bar
// Calculations
pv2 = pv1
psi2 = pv2/pg2                                                                    // relative humidity at the exit
// Result
printf( 'The relative humidity at the exit is:  %.2f',psi2);
