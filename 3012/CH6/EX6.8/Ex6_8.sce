// Given:-
P1 = 3.5                                          // pressure of refrigerant entering the compressor in bars
T1 = 268.0                                        // temperature of refrigerant entering the compressor in kelvin
P2 = 14.0                                         // pressure of refrigerant entering the condenser in bars
T2 = 348.0                                        // temperature of refrigerant entering the condenser in kelvin
P3 = 14.0                                         // pressure of refrigerant exiting the condenser in bars
T3 = 301.0                                        // temperature of refrigerant exiting the condenser in kelvin
P4 = 3.5                                          // pressure of refrigerant after passing through expansion valve in bars
P5 = 1.0                                          // pressure of indoor return air entering the condenser in bars
T5 = 293.0                                        // temperature of indoor return air entering the condenser in kelvin
AV5 = 0.42                                        // volumetric flow rate of indoor return air entering the condenser in m^3/s
P6 =  1.0                                         // pressure of return air exiting the condenser in bar
T6 = 323.0                                        // temperature of return air exiting the condenser in kelvin

// Part(a)

// From table A-9
s1 = 0.9572                                       // in kj/kg.k
// Interpolating in table A-9
s2 = 0.98225                                      // in kj/kg.k
h2 = 294.17                                       // in kj/kg
// From table A-7
s3 = 0.2936                                       // in kj/kg.k
h3 = 79.05                                        // in kj/kg

h4 = h3                                           // since expansion through valve is throttling process

// From table A-8
hf4 = 33.09                                       // in kj/kg
hg4 = 246.00                                      // in kj/kg
sf4 = 0.1328                                      // in kj/kg.k
sg4 = 0.9431                                      // in kj/kg.k
cp = 1.005                                        // in kj/kg.k

// Calculations

x4 = (h4-hf4)/(hg4-hf4)                           // quality at state 4
s4 = sf4 + x4*(sg4-sf4)                           // specific entropy at state 4

// CONDENSER!!
v5 = ((8314/28.97)*T5)/(P5*(10**5))               // specific volume at state 5
mairdot = AV5/v5                            
h6 = cp*T6
h5 = cp*T5
mrefdot = mairdot*(h6-h5)/(h2-h3)
deltaS65 = cp*log(T6/T5)-(8.314/28.97)*log(P6/P5) // change in specific entropy
sigmacond = (mrefdot*(s3-s2)) + (mairdot*(deltaS65))

// COMPRESSOR!!
sigmacomp = mrefdot*(s2-s1)

// VALVE!!
sigmavalve = mrefdot *(s4-s3)

// Results
printf( ' The rates of entropy production for control volume enclosing the condenser  is %f kw/k',sigmacond);
printf( ' The rates of entropy production for control volume enclosing the compressor  is %f kW/K.',sigmacomp);
printf( ' The rates of entropy production for control volume enclosing the expansion valve  is %f kW/K ',sigmavalve)
