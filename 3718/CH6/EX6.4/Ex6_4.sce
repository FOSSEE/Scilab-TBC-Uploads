//Chapter 6: Electrochemistry
//Problem: 4
clc;

//Declaration of Variable
Eo_Cu = 0.3370      // Cu+2 -> Cu
Eo_Zn = - 0.7630    // Zn -> Zn +2

// Solution
Eo_cell = Eo_Cu - Eo_Zn

mprintf("Daniel cell is, Zn | Zn +2 || Cu+2 | Cu\n")
mprintf(" Eo (cell) is %.1f V", Eo_cell)
