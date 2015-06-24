
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 23

clear ;clc;

//Given data
V = 1                   // volume of insulated tank in m^3
r = 1.4                 // ratio of specific heat
P0 = 0.1*1e6            // pressure of air in insulated tank in Pa
T0 = 300                // temperature of air in insulated tank in K
Pi = 1*1e6              // pressure of high pressure line in Pa
Ti = 600                // temperature of high pressure line in K
Pf = 1*1e6              // final pressure of air in the tank (Pa)
R = 8.314               // universal gas constant
// The first law expresion for a control volume (the tank) ignoring the changes//in KE and PE gives
// mi * hi = dE/dt  
// Cp*Ti*(Nf-N0)=Cv*(Nf*Tf-N0*T0)                       (A)
// Nf = Pf*V/(R*Tf);    N0 = P0*V/(R*T0)
// Equation A can be written as
deff('y=temp(Tf)', 'y = r*Ti*(Pf/Tf-P0/T0) - Pf + P0') 
Tf = fsolve(10,temp)

N0 = P0*V/(R*T0)                    //mass of air in tank(mol)
Nf = Pi*V/(R*Tf)                    //mass of air entered from line(mol)
m = Nf-N0                           //mass of air entered tank(mol)

// 40.093 mol air changed from 0.1 MPa, 300K to 1 MPa, 711.87 K.
// The entrophy change of this air is del S1
S1 = N0*R*{r/(r-1)*log(Tf/T0)-log(Pf/P0)}  

// 128.869 mol air changed from 1 MPa, 600K to 1 MPa, 711.87 K.
// The entrophy change of this air is del S2
S2 = m*R*r/(r-1)*log(Tf/Ti)

S = S1 + S2                                // total entropy change
 

// Output Results
mprintf('Mass of air entered the tank = %5.3f mol', m)
mprintf('\n Entrophy change associated with the process = %5.3f J/K', S)
