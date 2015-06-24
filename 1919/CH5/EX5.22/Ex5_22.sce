
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 22

clear ;clc;

//Given data
Ph = 0.1                // pressure of hot air flow in MPa
Th = 400                // temperature of hot air flow in K
Pc = 0.1                // pressure of cold air flow in MPa
Tc = 200                // temperature of cold air flow in K
Pf = 0.5                // pressure of air flow fed in MPa
Tf = 300                // temperature of air flow fed in K
R = 8.314               // universal gas constant in J/mol/K
Cp = 3.5 * R            // specific heat of ideal gas

// Suppose 1 mol air at 0.5 MPA, 300 K (State i) enters the device
// The device gives 0.5 mol air at 0.1 MPa, 400K(state e1) and
// 0.5 mol air at 0.1 MPa, 200K(state e2)
// The first law of thermodynamics gives  he-hi=0
 h12 = Pf*Cp*{Th-Tf+Tc-Tf}  // h12 = (he1 - hei)+(he2-hei)
// The Second law of thermodynamics for a flow process gives se-s1>=0
se1i = Pf*{Cp*log(Th/Tf)-R*log(Ph/Pf)}   // se1i = se1-si (J/K)
se2i = Pf*{Cp*log(Tc/Tf)-R*log(Pc/Pf)}   // se2i = se2-si (J/K)
sei  = se1i + se2i                      // se1i = se1-si (J/K)

// Output Results
mprintf('The sum of difference in he1 and hi and difference in he2 and hi = %1.0f J/mol', h12)
mprintf('\n The difference in se1 and si = %6.4f J/mol K', se1i)
mprintf('\n The difference in se2 and si = %7.4f J/mol K', se2i)
mprintf('\n The difference in se  and si = %6.4f J/mol K', sei)
mprintf('\n The device satisfies the laws of thermodynamics. It is Theoritically feasible')
