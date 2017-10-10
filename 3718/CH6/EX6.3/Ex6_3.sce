//Chapter 6: Electrochemistry
//Problem: 3
clc;

//Declaration of Constant
R = 8.314       //in J per K
F = 96500       //in C per mol

//Declaration of Variables
Cu = 0.15      //in M
Eo = 0.34      //in V
T = 298        //in K
n = 2          //in moles

// Solution
E = Eo + (2.303 * R * T) / (n * F) * log10(Cu)
mprintf("The single electrode potential for copper metal is %.4f V",E)
