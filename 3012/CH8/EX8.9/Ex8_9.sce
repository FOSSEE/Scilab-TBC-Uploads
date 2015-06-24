
// Given:-
T0 = 295                                                                // in kelvin
// Analysis
// From solution to Example 8.2.
mcwdot = 9.39e6                                                         // mass flow rate of the cooling water in kg/h

// Part(a)
// With saturated liquid values for specific enthalpy and entropy from Table A-2
he = 146.68                                                             // in kj/kg
hi = 62.99                                                              // in kj/kg
se = 0.5053                                                             // in kj/kg.k
si = 0.2245                                                             // in kj/kg.k
// Calculations
Rout = mcwdot*(he-hi-T0*(se-si))/(3600*10**3)                           // The net rate at which exergy is carried out of the condenser in MW
// Results
printf( ' The net rate at which exergy is carried from the condenser by the cooling water, is: %.2f MW.',Rout)
printf( ' Expressing this as a percentage of the exergy entering the plant with the fuel, we get %.2f percent',(Rout/231.28)*69)

// Part(b)
// From table 
s3 = 0.5926                                                              // in kj/kg.k
s2 = 6.2021                                                              // in kg/kg.k
mdot = 4.449e5                                                           // in kg/h
// Calculations
Eddot = T0*(mdot*(s3-s2)+mcwdot*(se-si))/(3600*10**3)                    // the rate of exergy destruction for the condenser in MW
// Results
printf( ' The rate of exergy destruction for the condenser is:  %.2f MW.',Eddot)
printf( ' Expressing this as a percentage of the exergy entering the plant with the fuel, we get, %.2f percent',(Eddot/231.28)*69)
