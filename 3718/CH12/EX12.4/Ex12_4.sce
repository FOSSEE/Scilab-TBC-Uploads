//Chapter 12: Polymers and Polymerization
//Problem: 4
clc;

//Declaration of Constant
Na = 6.022 * 10 ** 23       // Avogadros number

// Variables
wt_ethylene = 28            // g
deg = 500

// Solution
n = Na / deg

mprintf("28 g of ethylene contains %.3e molecules\n",Na)
mprintf(" No. of polyethylene formed %.3e molecules",n)
