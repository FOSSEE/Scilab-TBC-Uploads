
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 15

clear ;clc;

//Given data
N1 = 2          // number of moles of helium
P1 = 1.0*1e6    // pressure of helium compartment in Pa
T1 = 600        // temperature of helium compartment in K
N2 = 5          // number of moles of air
P2 = 2.0*1e6    // pressure of air compartment in Pa
T2 = 500        // temperature of air compartment in K
R = 8.314       // universal gas constant J/mol/K
C1 = 1.5 * R    // specific heat(ischoric) of helium in kJ/kmol/K
C2 = 2.5 * R    // specific heat(ischoric) of air in kJ/kmol/K

// Calculations for determining the entorphy change of given process
V1 = N1*T1*R/P1     // volume of helium before mixing
V2 = N2*T2*R/P2     // volume of air    before mixing

// Consider the entire container as the system, then Q = 0; W = 0;
// Hence, del U = 0; 
deff('y=Tf(T)', 'y = N1*C1*(T-T1) + N2*C2*(T-T2)')
T = fsolve(0,Tf)    // Final temperature after mixing

V = V1 + V2         // final volume   after mixing
N = N1 + N2         // total moles    after mixing
P = N*T*R/V         // Final pressure after mixing in Pa

// entropy change for helium from initial state to final state
S1 = N1*{2.5*R*log(T/T1) - R*log(P/P1)}

// entropy change for air from initial state to final state
S2 = N2*{3.5*R*log(T/T2) - R*log(P/P2)}

// entropy change for final state of individual to mixture
S3 = -7*R*{(N1/N)*log(N1/N) + (N2/N)*log(N2/N)}

// The Total change in enthalphy for entire process 
S = S1 + S2 + S3

// Output Results
mprintf('The entrophy change for associated with the process = %6.4f kJ/K' ,S)

