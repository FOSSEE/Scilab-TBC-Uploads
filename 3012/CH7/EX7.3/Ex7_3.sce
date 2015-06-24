// Given :-
T = 373.15                                              // initial temperature of saturated liquid in kelvin
T0 = 293.15                                             // in kelvin
P0 = 1.014                                              // in bar

// Part(a)
// From table A-2
ug = 2506.5                                             // in kj/kg
uf = 418.94                                             // in kj/kg
vg = 1.673                                              // in m^3/kg
vf = 1.0435*(10**(-3))                                  // in m^3/kg
sg = 7.3549                                             // in kj/kg.k
sf = 1.3069                                             // in kj/kg.k


// Calculations 
// Energy transfer accompanying work
etaw = 0                                                // since p = p0
// Exergy transfer accompanying heat
Q = 2257                                                // in kj/kg,obtained from example 6.1
etah = (1-(T0/T))*Q

// Exergy destruction
ed = 0                                                  // since the process is accomplished without any irreversibilities
deltae = ug-uf + P0*(10**5)*(vg-vf)/(10**3)-T0*(sg-sf)

// Results
printf( ' Part(a)the change in exergy is %.2f kJ/kg.',deltae)
printf( ' The exergy transfer accompanying work is %.2f kJ/kg.',etaw)
printf( ' The exergy transfer accompanying heat is %.2f kJ/kg',etah)
printf( ' The exergy destruction is %.2f kJ/kg.',ed)


// Part(b)
Deltae = deltae                                          // since the end states are same 
Etah = 0                                                 // since process is adiabatic
// Exergy transfer along work
W = -2087.56                                             // in kj/kg from example 6.2
Etaw = W- P0*(10**5)*(vg-vf)/(10**3)
// Exergy destruction
Ed = -(Deltae+Etaw)

// Results
printf( ' Part(b)the change in exergy is %.2f kJ/kg.',Deltae)
printf( ' The exergy transfer accompanying work is %.2f kJ/kg.',Etaw)
printf( ' The exergy transfer accompanying heat is %.2f kJ/kg.',Etah)
printf( ' The exergy destruction is %.2f kJ/kg.',Ed)
