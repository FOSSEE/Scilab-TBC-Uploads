
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 3

clear ;clc;

//Given data
gam = 1.5               // specific heat ratio
Cp1 = 20.7860           // molar heat capacity of Helium in kJ/mol K
Cv1 = 12.4717           // molar heat capacity of Helium in kJ/mol K
Cp2 = 28.6455           // molar heat capacity of Hydrogen  in kJ/mol K
Cv2 = 20.3311           // molar heat capacity of Hydrogen in kJ/mol K

// Calculations
// X1 be the molefraction of He in the mixture
// CP_m = X1*Cp1 + (1-X1)*Cp2
// Cv_m = X1*Cv1 + (1-X1)*Cv2
// gam = (X1*Cp1 + (1-X1)*Cp2)/(X1*Cv1 + (1-X1)*Cv2)
deff('y=mol_frac(X1)', 'y = gam-(X1*Cp1 + (1-X1)*Cp2)/(X1*Cv1 + (1-X1)*Cv2)') 
X1 = fsolve(0.1,mol_frac)


X2 = (1-X1)*100         // volume composition of H2
X1 = X1 * 100           // volume composition of He

// Output Results
mprintf('Volume percent composition of Helium = %4.2f ' ,X1);
mprintf('\n Volume percent composition of Hydrogen = %4.2f ' ,X2);
