
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 5

clear ;clc;

//Given data
V = 1                  // volume of tank in m^3
P1 = 0.1               // pressure of tank with He in MPa
T1 = 300               // temperature of tank with He in K
P2 = 0.4               // pressure of tank with CO2 in MPa
T2 = 600               // temperature of tank with CO2 in K
Pf = 0.4               // pressure of tank after Co2 enters in MPa
Cv1 = 12.4717          // molar heat capacity of He in kJ/kmol K
Cv2 = 28.8354          // molar heat capacity of CO2 in kJ/kmol K
Cp2 = 37.1444          // molar heat capacity of CO2 in kJ/kmol K
R = 8.314              // gas constant

// Calculations
// N2*h = Uf-U0         (A)// First law of thermodynamics of transient flow
// U0 = N1*Cv1*T1
U0 = P1*1e3*V*Cv1/(R)       // in kJ

// Uf = (N1*Cv1 + N2*Cv2) * Tf
//Tf = Pf*V/((N1+N2)*R)
N1 = P1*1e3*V/(R*T1)

// Uf = (N1*Cv1 + N2*Cv2) * Pf*V/((N1+N2)*R)

// N2*h = (N1*Cv1 + N2*Cv2) * Pf*V/((N1+N2)*R) - U0

// to determine the number of moles of CO2
deff('y=moles(N2)', 'y = N2*Cp2*T2 - ((N1*Cv1 + N2*Cv2) * Pf*1e3*V/((N1+N2)*R)) + U0') 
N2 = fsolve(0.1,moles)

Tf = Pf*1e3*V/((N1+N2)*R)       // Final temperature of mixture in tank

X2 = N2/(N1+N2)             // molefraction of CO2
X1 = 1 - X2                 // molefraction of He

// Output Results
mprintf('Final temperature of mixture in tank = %4.2f K' , Tf);
mprintf('\n The amount of CO2 enters the tank = %4.4f kmol' , N2);
mprintf('\n Composition of CO2 in mixture = %4.4f ' , X2);
mprintf('\n Composition of He in mixture  = %4.4f ' , X1);

