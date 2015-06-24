// Theory and Problems of Thermodynamics
// Chapter 2
// First Law of Thermodynamics
// Example 2

clear ;clc;

//Given data
r = 1.4;         // r = CP/CV
P1 = 0.5;        // pressure at state 1 in MPa
T1 = 300;        // temperature at state 1 in K
V_21 = 2;        // ratio of V2 and V1
T2 = T1 * V_21;  // temperature at state 2 in K
T3 = T1;       // temperature at state 3 in K
R = 8.314;       // gas constant in J/K

//For reversible adiabatic path
T_23 = T2 / T3                // T_23 ratio of T2 and T3
V_32 = T_23 ^ (1/(r-1));      // ratio of V3 and V2

/// Q = Q12 = Q23 = Cp*T1
Q_A = R * r * T1 / (r -1)     // heat interactions for adiabatic path
Q_A = Q_A / 1000;             // units conversion J to kJ

// W = W12 + W23 = R*T1 + Cv*T1 = Cp*T1
W_A = R * r * T1 / (r -1)     // work done for adiabatic path
W_A = W_A / 1000;             // units conversion J to kJ

// for reversible isothermal process
// W_I = integrate('P','V',3,1) = R*T1*log(V1/V3) = R*T1*ln(V1/V2)*(V2/V3)
W_I = R * T1 * log(1 / (V_21 * V_32) );     // work for reversible isothermal process
W_I = W_I / 1000;             // units conversion J to kJ

// Results
mprintf('heat interaction for reversible adiabatic path = %4.2f kJ', Q_A)
mprintf('\n work done for adiabatic path = %4.2f kJ', W_A)
mprintf('\n work done for reversible isothermal process = %5.3f kJ', W_I)

