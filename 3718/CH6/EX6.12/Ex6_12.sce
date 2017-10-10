//Chapter 6: Electrochemistry
//Problem: 12
clc;

//Declaration of Variables
E_KCl = 0.2415       // V
E_cell = 0.445       // V


// Solution
mprintf("Emf of the cell is\n")
mprintf(" At 25C,\n")
mprintf(" E = Er - El = Eref - ((RT)/ F) * ln H+\n")

pH = (E_cell - E_KCl) / 0.059
Eo_cell = - 0.8277    // V

mprintf(" Thus, equilibrium constant for the reaction\n")
mprintf(" 2H2O --> H3O+  + OH- may be calculated as\n")

K = 10 ** (Eo_cell / 0.0591)

mprintf(" K = %.e",K)
