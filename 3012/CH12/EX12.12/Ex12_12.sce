
// Given:-
T1 = 22.0                                                                         // entry temperature of moist air in degree celcius
Twb = 9.0                                                                         // wet-bulb temperature of entering moist air in degree celcius
madot = 90.0                                                                      // mass flow rate of dry air in kg/min
Tst = 110.0                                                                       // temperature of injected saturated water vapor in degree celcius
mstdot = 52.0                                                                     // mass flow rate of injected saturated water vapor in kg/h
p = 1.0                                                                           // pressure in bar

// Part(a)
// By inspection of the psychrometric chart
omega1 = 0.002
// Calculation
omega2 = omega1 + mstdot/(madot*60)
// Result
printf( 'The humidity ratio at the exit is:  %.2f',omega2);

// Part(b)
// The steady-state form of the energy rate balance can be rearranged as
// (ha + omega*hg)2 = (ha + omega*hg)1 + (omega2-omega1)*hg3
// On putting values in the above equation from tables and figures, temperature at the exit can then be read directly from the chart
T2 = 23.5                                                                         // in degree celcius
// Result
printf( 'The temperature at the exit in degree celcius is:  %.2f',T2)
