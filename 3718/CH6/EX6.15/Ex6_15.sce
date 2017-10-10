//Chapter 6: Electrochemistry
//Problem: 15
clc;

//Declaration of Variables
E = 0.4         // V

// Solution

mprintf( "The cell is Pt(H2) | H+, pH2 = 1 atm\n")
mprintf(" The cell reaction is\n")
mprintf(" 1/2 H2 --> H+ + e-\n")

pH = E / 0.0591

mprintf(" pH = %.3f ",pH)
