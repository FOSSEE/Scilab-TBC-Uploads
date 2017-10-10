//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 20
clc;

// Solution
Eq_HI = 1.56 / 2
Eq_H2 = 0.22 / 2
Eq_I2 = 0.22 / 2
Kc = Eq_H2 * Eq_I2 / (Eq_HI ** 2)
mprintf("The equilibrium constant for the dissociation reaction %.4f",Kc)
