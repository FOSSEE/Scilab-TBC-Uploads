
// Given:-
T1 = 30.0                                                                       // in degree celcius
AV1 = 280.0                                                                     // in m^3/min
psi1 = 0.5                                                                      // relative humidity at the inlet
T2 = 10.0                                                                       // in degree celcius
p = 1.013                                                                       // pressure in bar

// Part(a)
// From table A-2
pg1 = 0.04246                                                                   // in bar
Rbar = 8314                                                                     // universal gas constant
Ma = 28.97                                                                      // molar mass of air
// Calculations
pv1 = psi1*pg1                                                                  // in bar
pa1 = p-pv1                                                                     // partial pressure of the dry air in bar
madot = AV1/((Rbar/Ma)*((T1+273)/(pa1*10**5)))                                  // common mass flow rate of the dry air in kg/min
// Result
printf( '\n The mass flow rate of the dry air in kg/min is:  %.2f',madot);

// Part(b)
// From table A-2
pv2 = 0.01228                                                                    // in bar
// Calculations
omega1 = 0.622*(pv1/(p-pv1))
omega2 = 0.622*(pv2/(p-pv2))
mwdotbymadot = omega1-omega2                                   
// Result
printf( '\n The rate at which water is condensed, in kg per kg of dry air flowing through the control volume is:  %.4f',mwdotbymadot);

// Part(c)
// From table A-2 and A-22
ha2 = 283.1                                                                      // in kg/kj
ha1 = 303.2                                                                      // in kg/kj
hg1 = 2556.3                                                                     // in kg/kj
hg2 = 2519.8                                                                     // in kg/kj
hf2 = 42.01                                                                      // in kg/kj
// Calculations
Qcvdot = madot*((ha2-ha1)-omega1*hg1+omega2*hg2+(omega1-omega2)*hf2)             // in kj/min
// Result
printf( '\n The required refrigerating capacity, in tons is:  %.2f',Qcvdot/211);
