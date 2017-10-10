//Chapter 6: Electrochemistry
//Problem: 13
clc;

//Declaration of Variables
EoSn = 0.15        // V
EoCr = - 0.74      // V

// Solution
mprintf("3Sn+4  +  2Cr  -->  3Sn+2 + 2Cr+3\n")

Eo_cell = EoSn - EoCr
n = 6
K = 10 ** (n * Eo_cell / 0.0591)

mprintf(" The equillibrium constant for th reaction is %.2e ",K)
