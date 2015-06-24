
// Given:-
V = 35.0                                                                        // volume of vessel in m^3
p1 = 1.5                                                                        // initial pressure in bar
T1 = 120.0                                                                      // initial temperature in degree celcius
psi = 0.1
T2 = 22.0                                                                       // in degree celcius
Rbar = 8314.0                                                                   // universal gas constant
Ma = 28.97                                                                      // molar mass of air
pv1 = 0.1985                                                                    // in bar, from example 12.8
mv2 = 0.681                                                                     // in kg, from examples 12.8
mv1 = 3.827                                                                     // in kg, from example 12.8
mw2 = 3.146                                                                     // in kg, from example 12.8
// evaluating internal energies of dry air and water from Tables A-22 and A-2, respectively
ua2 = 210.49                                                                    // in kj/kg
ua1 = 281.1                                                                     // in kj/kg
ug2 = 2405.7                                                                    // in kj/kg
uf2 = 92.32                                                                     // in kj/kg
ug1 = 2529.3                                                                    // in kj/kg

// Calculations
ma =( ((p1-pv1)*10**5)*V)/((Rbar/Ma)*(T1+273))                                  // mass of dry air in kg
Q = ma*(ua2-ua1) + mv2*ug2 + mw2*uf2 - mv1*ug1

// Result
printf( 'The heat transfer during the process, in kJ is:  %f',Q)
