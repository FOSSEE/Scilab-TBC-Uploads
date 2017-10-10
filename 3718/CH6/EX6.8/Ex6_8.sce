//Chapter 6: Electrochemistry
//Problem: 8
clc;

//Declaration of Constant
F = 96500     //in C per mol

//Declaration of Variables
E1o = - 2.48  //in V
E2o = 1.61    //in V

// Solution
delta_G1 = - 3 * F * (- 2.48)
delta_G2 = - 1 * F * 1.61

mprintf("delta_G3 = delta_G1 + delta_G2\n")
mprintf(" delta_G3 = - 4 * F * E3o\n")

E3o = (delta_G1 + delta_G2) / (- 4 * F)

mprintf(" The reduction potential for the half-cell Pt/Ce, Ce+4 is %.4f V",E3o)
