
// Given:-
V = 35.0                                                                          // volume of the vessel in m^3
p1 = 1.5                                                                          // in bar
T1 = 120.0                                                                        // in degree celcius
psi1 = 0.1                                                                       
T2 = 22.0                                                                         // in degree celcius

// Part(a)
// The dew point temperature at the initial state is the saturation temperature corresponding to the partial pressure pv1. With the given relative humidity and the saturation pressure at 120C from Table A-2
pg1 = 1.985
// Interpolating in Table A-2 gives the dew point temperature as
T = 60.0                                                                          // in degree celcius
// Calculation
pv1 = psi1*pg1                                                                    // partial pressure in bar
// Result
printf( 'The dew point temperature corresponding to the initial state, in degee celcius is:  %f',T)

// Part(b)
Rbar = 8314.0                                                                     // universal gas constant
Mv = 18.0                                                                         // molar mass of vapor in kj/kmol
// Interpolation in Table A-2
Tdash = 56.0                                                                      // in degrees
vv1 =((Rbar/Mv)*(T1+273))/(pv1*10**5)                                             // the specific volume of the vapor at state 1 in m^3/kg
// Result
printf( 'The temperature at which condensation actually begins in degree celcius is:  %f',Tdash)

// Part(c)
// From table 
vf2 = 1.0022e-3
vg2 = 51.447
vv2 = vv1                                                                         // specific volume at final state
// Calculations
mv1 = V/vv1                                                                       // initial amount of water vapor present in kg
x2 = (vv2-vf2)/(vg2-vf2)                                                          // quality
mv2 = x2*mv1                                                                      // the mass of the water vapor contained in the system at the final state
mw2 = mv1-mv2
// Result
printf( 'The amount of water condense in kg is:  %f',mw2)
