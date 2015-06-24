
// Given:-
T1 = 38.0                                                                         // temperature of entering air in degree celcius
psi1 = 0.1                                                                        // relative humidity of entering air 
AV1 = 140.0                                                                       // volumetric flow rate of entering air in m^3/min
Tw = 21.0                                                                         // temperature of added water in degree celcius
T2 = 21.0                                                                         // temperature of exiting moist air in degree celcius
p = 1.0                                                                           // pressure in atm

// Part(a)
// From table A-2
pg1 = 0.066                                                                       // in bar
// The specific volume of the dry air can be evaluated from the ideal gas equation of state. The result is
va1 = .887                                                                        // in m^3/kg
cpa = 1.005
// From table A-2
hf = 88.14
hg1 = 2570.7
hg2 = 2539.94
// Calculations
pv1 = psi1*pg1                                                                    // the partial pressure of the moist air entering the control volume in bar
omega1 = 0.622*(pv1/(p*1.01325-pv1))
omega2 = (cpa*(T1-T2)+omega1*(hg1-hf))/(hg2-hf)
madot = AV1/va1                                                                   // mass flow rate of the dry air in kg/min
mwdot = madot*60*(omega2-omega1)                                                  // in kg/h
// Result
printf( '\n The mass flow rate of the water to the soaked pad in is:  %.2f kg(water)/h',mwdot);

// Part(b)
pv2 = (omega2*p*1.01325)/(omega2+0.622)                                           // in bars
// At 21C, the saturation pressure is
pg2 = 0.02487
psi2 = pv2/pg2
// Result
printf( '\n The relative humidity of the moist air at the exit to the evaporative cooler is:  %.2f',psi2)
