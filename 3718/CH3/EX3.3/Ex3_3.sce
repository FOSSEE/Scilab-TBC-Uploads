//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 3
clc;

//Declaration of Variables
delta_g = -16.0        // Kelvin cal
delta_h = -10.0        // Kelvin cal
T = 300                // Kelvin

// Solution
delta_s = (delta_h - delta_g) * 10 ** 3 / T    // cal/deg
new_t = 330                     // Kelvin
new_delta_g = (delta_h * 10 ** 3) - new_t * delta_s

mprintf("The free energy at 330K is: %.2e K cal",new_delta_g)
