//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 21
clc;

//Declaration of Variables
Kc = 0.5         // mole square litre square
T = 400          // K
R = 0.082        // litre atm per degree  per mole

// Solution
Kp = Kc * (R * T) ** (-2)

mprintf("The given equilibrium is\n")
mprintf(" N2(g) + 3H2(g) <--> 2NH3(g)\n")
mprintf(" Kp is %.3e",Kp)
