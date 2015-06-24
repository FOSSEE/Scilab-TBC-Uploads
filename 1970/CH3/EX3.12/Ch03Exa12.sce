// Scilab code Exa3.12 : : Page-126(2011)
clc; clear;
n = 1+1.35e-04; // Refractive index of the medium
V_min = 1/n; // Minimum velocity of the electron, m/s
p = (1+V_min)*(1-V_min); // It is nothing but just to take the product 
G_min = 1/sqrt(p); // Lorentz  factor
m_e = 9.10939e-031; // Mass of the electron, Kg
C = 3e+08; // Velocity of light, metre per  sec
T_min = [(G_min-1)*m_e*C^2]/(1.602e-013); // Minimum kinetic energy required by an  electro to emit cerenkov radiation, mega electron volts
printf("\nThe minimum kinetic energy required to  electron to emit cerenkov radiation = %5.2f MeV", T_min);
 
// Result 
// The minimum kinetic energy required to  electron to emit cerenkov radiation = 30.64 MeV 
