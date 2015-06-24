
// Theory and Problems of Thermodynamics
// Chapter 6
// Thermodynamic Potentials and Availability
// Example 16

clear ;clc;

//Given data
Ng = 10                 // moles of a gas in kmol
T1_g = 700              // initial temperature of gas in K
T2_g = 320              // final temperature of gas in K
T1_a = 300              // air inlet temperature in K
T2_a = 330              // air outlet temperature in K
T0 = 298                // ambient temperature in K
Pa = 0.1                // ambient pressure in MPa
R = 8.314               // gas constant
Cp = 3.5*R              // specific heat ratio of gas and air

// Calculations
E_g_a = Ng*Cp*(T1_g-T2_g)   // Energy transfered from gas to air

Na = E_g_a/(Cp*(T2_a-T1_a))  // number moles of air

// change in availability of air
C_a = Na*(Cp*(T2_a-T1_a)-T0*Cp*log(T2_a/T1_a))
C_a = C_a * 1e-3             // units conversion from kJ/s to MJ/s


// change in availability of gas
C_g = Ng*(Cp*(T2_g-T1_g)-T0*Cp*log(T2_g/T1_g))
C_g = C_g * 1e-3             // units conversion from kJ/s to MJ/s
// loss in available energy
L_E = -C_g - C_a


// Output Results
mprintf('(a) Change in availability of air  = %4.3f MJ/s' ,C_a);
mprintf('\n (b) Change in availability of gas  = %4.3f MJ/s' ,C_g);
mprintf('\n (c) loss in availability of energy = %4.2f MJ/s' ,L_E);
