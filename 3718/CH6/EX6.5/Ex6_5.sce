//Chapter 6: Electrochemistry
//Problem: 5
clc;

//Declaration of Variable
Eo_Cu = 0.3370       // Cu+2 -> Cu
Eo_Cd = - 0.4003     // Cd -> Cd +2

// Solution
Eo_cell = Eo_Cu - Eo_Cd

mprintf("Cell is, Cd | Cd +2 || Cu+2 | Cu\n")
mprintf(" Eo (cell) is %.4f V", Eo_cell)
