// Given:-
Wnetdot = 45.00                                                                    // in MW
T1 = 300.00                                                                        // in kelvin
p1 = 100.00                                                                        // in kpa
etac = 0.84                                                                        // The isentropic efficiency of the compressor
T3 = 1400.00                                                                       // in kelvin
p2 = 1200.00                                                                       // in kpa
p3 = p2
etat = 0.88                                                                        // isentropic efficiency of the turbine
T5 = 400.00                                                                        // in kelvin
p4 = 100.00                                                                        // in kpa
p5 = p4
T7 = 400.00                                                                        // in degree celcius
p7 = 8.00                                                                          // in MPa
etatw =0.9                                                                         // isentropic efficiency of turbine of the vapor cycle
p8 = 8.00                                                                          // in kpa
p9 = p8
etap = 0.8                                                                         // isentropic efficiency of pump of the vapor cycle
T0 = 300.00                                                                        // in kelvin
p0 = 100.00                                                                        // -in kpa

// Analysis
// With procedure similar to that used in the examples of chapters 8 and 9,we can determine following property data
h1 = 300.19                                                                        // in kj/kg
h2 = 669.79                                                                        // in kj/kg
h3 = 1515.42                                                                       // in kj/kg
h4 = 858.02                                                                        // in kj/kg
h5 = 400.98                                                                        // in kj/kg
h6 = 183.96                                                                        // in kj/kg
h7 = 3138.30                                                                       // in kj/kg
h8 = 2104.74                                                                       // in kj/kg
h9 = 173.88                                                                        // in kj/kg
s1 = 1.7020                                                                        // in kj/kg.k
s2 = 2.5088                                                                        // in kj/kg.k
s3 = 3.3620                                                                        // in kj/kg.k   
s4 = 2.7620                                                                        // in kj/kg.k
s5 = 1.9919                                                                        // in kj/kg.k
s6 = 0.5975                                                                        // in kj/kg.k
s7 = 6.3634                                                                        // in kj/kg.k
s8 = 6.7282                                                                        // in kj/kg.k
s9 = 0.5926                                                                        // in kj/kg.k

// Part(a)
// By applying mass and energy rate balances
// Calculations
mvdotbymgdot = (h4-h5)/(h7-h6)                                                     // ratio of mass flow rates of vapor and air
mgdot = (Wnetdot*10**3)/(((h3-h4)-(h2-h1)) + mvdotbymgdot*((h7-h8)-(h6-h9)))       // mass flow rate of air in kg/s
mvdot = mvdotbymgdot*mgdot                                                         // mass flow rate of vapor in kg/s
Wgasdot = mgdot*((h3-h4)-(h2-h1))*10**-3                                           // net power developed by gas turbine in MW
Wvapdot = mvdot*((h7-h8)-(h6-h9))*10**-3                                           // net power developed by vapor cycle in MW

// Results
printf( ' Mass flow rate of air is: %.2f kg/s.',mgdot)
printf( ' Mass flow rate of vapor is: %.2f kg/s.',mvdot)
printf( ' Net power developed by gas turbine is:  %.2f MW.',Wgasdot)
printf( ' Net power developed by vapor cycle is:  %.2f MW.',Wvapdot)


// Part(b)

// The net rate of exergy increase of the air passing through the combustor is
Edotf32 = mgdot*(h3-h2-T0*(s3-s2))*10**-3                                          // in MW
// The net rate exergy is carried out by the exhaust air stream at 5 is
Edotf51 = mgdot*(h5-h1-T0*(s5-s1))/10**3                                           // in MW
// The net rate exergy is carried out as the water passes through the condenser is
Edotf89 = mvdot*(h8-h9-T0*(s8-s9))*10**-3                                          // in MW
R = 8.314                                                                          // universal gas constant, in SI units
M = 28.97                                                                          // molar mass of air in grams
// The rate of exergy destruction for air turbine is
Eddott = mgdot*T0*(s4-s3-(R/M)*log(p4/p3))/10**3                              // in MW
// The rate of exergy destruction for compressor is
Eddotc = mgdot*T0*(s2-s1-(R/M)*log(p2/p1))/10**3                              // in MW
// The rate of exergy destruction for steam turbine is
Eddotst = mvdot*T0*(s8-s7)/10**3                                                   // in MW
// The rate of exergy destruction for pump is
Eddotp = mvdot*T0*(s6-s9)/10**3                                                    // in MW
// For heat exchanger
EddotHE = T0*(mgdot*(s5-s4)+mvdot*(s7-s6))/10**3                                   // in MW

// Results
printf( ' Balance sheet')
printf( 'Net exergy increase of the gas passing')
printf( ' Through the combustor: %.2f MW',Edotf32)
printf( 'Disposition of the exergy:')
printf( '• Net power developed')
printf( 'gas turbine cycle %.2f MW',Wgasdot)
printf( 'vapor cycle %.2f MW',Wvapdot)
printf( '• Net exergy lost')
printf( 'with exhaust gas at state 5 %.2f MW',Edotf51)
printf( 'from water passing through condenser %.2f MW',Edotf89)
printf( '• Exergy destruction')
printf( 'air turbine %.2f MW',Eddott)
printf( 'compressor %.2f MW',Eddotc)
printf( 'steam turbine %.2f MW',Eddotst)
printf( 'pump %.2f MW',Eddotp)
printf( 'heat exchanger %.2f MW',EddotHE)
