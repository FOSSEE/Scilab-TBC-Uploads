// Scilab Code Ex6.14: Page-203 (2006)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
tau = 1e-012;   // Life time of electron in Ge, s
m = 9.1e-031;   // Mass of an electron, kg
m_e = 0.5*m;     // Effective masses of the electron in Ge, kg
mu = e*tau/m_e;   // Mobility of electron in Ge, m-square/V-s
n_i = 2.5e+019;     // Intrinsic carrier concentration of Ge at room temperature, per metre cube
n_Ge = 5e+028;  // Concentration of Ge atoms, per metre cube
n_e = n_Ge/1e+06;    // Concentration of impurity atoms, per metre cube
// From law of mass action, n_e*n_h = n_i^2, solving for n_h
n_h = n_i^2/n_e;    // Concentration of holes, per metre cube

printf("\nThis mobility of electron in Ge = %4d cm-square/V-s", mu/1e-04);
printf("\nThis concentration of holes in Ge = %4.2e per metre cube", n_h);

// Result 
// This mobility of electron in Ge = 3516 cm-square/V-s
// This concentration of holes in Ge = 1.25e+016 per metre cube 

