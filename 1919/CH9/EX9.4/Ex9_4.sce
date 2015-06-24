
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 4

clear ;clc;

//Given data
V = 5                  // volume of tank in m^3
X1 = 0.3               // volume fraction of Hydrogen
X2 = 0.3               // volume fraction of Argon 
X3 = 0.4               // volume fraction of Methane 
Xf = 0.6               // final mixture composition of methane
T = 300                // initial temperature of mixture in K
P = 1                  // initial pressure of mixture in MPa
R = 8.314              // gas constant

// Calculations
p1 = X1*P              // pressure of Hydrogen
p2 = X2*P              // pressure of Argon
p3 = X3*P              // pressure of Methane

N1 = p1*1e3*V/(R*T)        // pressure of Hydrogen
N2 = p2*1e3*V/(R*T)        // pressure of Argon
N3 = p3*1e3*V/(R*T)        // pressure of Methane



// to determine the number of moles of methane in final mixture
deff('y=moles(Nf)', 'y = Xf-(Nf/(N1+N2+Nf))') 
Nf = fsolve(0.1,moles)

CH4_add = Nf-N3         // CH4 moles to be added

N = N1 + N2 + Nf        // total number of moles

Pf = N*R*T/V * 1e-3     // Final pressure in MPa

// Output Results
mprintf('Amount of methane to be added = %4.4f kmol' , CH4_add);
mprintf('\n Final pressure of mixture in Tank = %4.1f MPa' , Pf);
