
// Given:-
T1 = 38.0                                                                       // in degree celcius
m1dot = 4.5e7                                                                   // in kg/h
T2 = 30.0                                                                       // in degree celcius
m2dot = 4.5e7                                                                   // in kg/h
T3 = 25.0                                                                       // in degree celcius
psi3 = 0.35
T4 = 35.0                                                                       // in degree celcius
psi4 = 0.9
T5 = 20.0                                                                       // in degree celcius

// Analysis
// The humidity ratios omega3 and omega4 can be determined using the partial pressure of the water vapor obtained with the respective relative humidity
omega3 =0.00688
omega4 = 0.0327
// From tables A-2 and A-22
hf1 = 159.21
hf2 = 125.79
ha4 = 308.2
ha3 = 298.2
hg4 = 2565.3
hg3 = 2547.2
hf5 = 83.96
// Calculations
madot = (m1dot*(hf1-hf2))/(ha4-ha3+omega4*hg4-omega3*hg3-(omega4-omega3)*hf5)   // in kg/h
m5dot = madot*(omega4-omega3)                                                   // in kg/h
// Results
printf( 'The mass flow rate of dry air in kg/h is:  %.2f',madot)
printf( 'The mass flow rate of makeup water in kg/h is:  %.2f',m5dot)
