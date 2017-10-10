//Chapter 7: Solid State
//Problem: 8
clc;

//Declaration of Constant
N = 6.023 * 10 ** 23

//Declaration of Variables
wt = 55.6
p = 0.29                // nm
n = 2

// Solution
mprintf( "For BCC pattern,\n Number of Atoms per unit cell = 2\n")
d = n * (wt * 10 ** -3) / (N * (p * 10 ** - 9) ** 3)
mprintf(" Density of the metal is  %.2e kg per m cube\n",d)
mprintf(" Number of nearest neighbours for BCC = 8")
