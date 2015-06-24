
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 13

clear ;clc;

//Given data
N = 1         // number of moles of nitrogen
r = 1.4       // ratio of specific heats of nitrogen at 0.1 MPa and 300 K
P1 = 0.1      // initial state pressure in MPa
T1 = 300      // initial state temperature in K
P2 = 0.5      // final state pressure in MPa
T2 = 600      // final state temperature in K
R = 8.314     // universal gas constant J/mol/K

// Calculation for determining the change in the entrophy of nitrogen
// del_S  = N{Cp ln(T2/T1) - R ln(P2/P1)}
del_S  = N*{(R*r/(r -1))*log(T2/T1) - R*log(P2/P1)}

// Output Results
mprintf('The change in entrophy of nitrogen = %5.3f kJ/mol K' ,del_S)

