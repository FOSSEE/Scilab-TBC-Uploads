clc
// Example 1.4.py
// For thre pressure vessel in Example 1.2, calculate the total internal
// energy of the gas stored in the vessel.

// Variable declaration from example 1.2
V = 10             // volume of vessel (m^3)
p = 20.0           // pressure (atm)
T = 300            // temperature (Kelvin)

R = 287.0          // gas constant (J/Kg/K)
gamma1 = 1.4        // ratio of specific heats for air

// Calculations 
cv = R / (gamma1-1) // specific heat capacity at constant volume(J/Kg K)
e = cv * T         // internal energy per Kg (J/Kg)
p = p * 101000.0   // units conversion to N/m^2
rho = p/R/T        // from ideal gas equation of state (Kg/m^3)
m = V * rho        // total mass = volume * density (Kg)
E = m*e            // total energy in J

// Result 
printf("\n Total internal energy is %.2e J", E)

