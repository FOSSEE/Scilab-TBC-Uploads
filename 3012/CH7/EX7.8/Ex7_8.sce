// Given:-
clc;
m1dot = 69.78                                             // in kg/s
p1 = 1.0                                                  // in bar
T1 = 478.0                                                // in kelvin
T2 = 400.0                                                // in kelvin
p2 = 1.0                                                  // in bar
p3 = 0.275                                                // in Mpa
T3 = 38.9                                                 // in degree celcius
m3dot = 2.08                                              // in kg/s
T4 = 180.0                                                // in degree celcius
p4 = 0.275                                                // in Mpa
p5 = 0.07                                                 // in bar
x5 = 0.93
Wcvdot = 876.8                                            // in kW
T0 = 298.0                                                // in kelvin


// Part(a)
// From table A-22
h1 = 480.35                                               // in kj/kg
h2 = 400.97                                               // in kj/kg
s1 = 2.173                                                // in kj/kg
s2 = 1.992                                                // in kj/kg

// From table A-2E
h3 = 162.82                                               // in kj/kg
s3 = 0.5598                                               // in kj/kg.k
// Using saturation data at 0.07 bars from Table A-3
h5 = 2403.27                                              // in kj/kg
s5 = 7.739                                                // in kj/kg.k
//The net rate exergy carried out by the water stream

// From table A-4
h4 = 2825.0                                               // in kj/kg
s4 = 7.2196                                               // in kj/kg.k
// Calculations
netRE = m1dot*(h1-h2-T0*(s1-s2-(8.314/28.97)*log(p1/p2))) // the net rate exergy  carried into the control volume
netREout = m3dot*(h5-h3-T0*(s5-s3))
// From an exergy rate balance applied to a control volume enclosing the steam generator
Eddot = netRE + m3dot*(h3-h4-T0*(s3-s4))                  // the rate exergy is destroyed in the heat-recovery steam generator

// From an exergy rate balance applied to a control volume enclosing the turbine
EdDot = -Wcvdot + m3dot*(h4-h5-T0*(s4-s5))                // the rate exergy is destroyed in the tpurbine

// Results 
printf( '\n balance sheet')
printf( '\n- Net rate of exergy in: %f kJ/kg.',netRE)
printf( '\n Disposition of the exergy:')
printf( '\n• Rate of exergy out')
printf( '\n power developed %f kJ/kg.',netRE-netREout-Eddot-EdDot)
printf( '\n water stream  %f',netREout)
printf( '\n• Rate of exergy destruction')
printf( '\n heat-recovery steam generator %f kJ/kg',Eddot)
printf( '\n turbine %f',EdDot)

// note : answer is slightly different because of rounding off error.
