//Chapter 6: Electrochemistry
//Problem: 6
clc;

//Declaration of Constant
F = 96500        // C / mol

//Declaration of Variables
n = 2
T = 25           // C
Eo_Ag = 0.80     // Ag+ / Ag
Eo_Ni = - 0.24   // Ni+2 / Ni

// Solution
Eo_Cell = Eo_Ag - Eo_Ni
delta_Go = - n * F * Eo_Cell

mprintf("Standard free energy change %d J / mol",delta_Go)
