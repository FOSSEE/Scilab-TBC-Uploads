//Chapter 7: Solid State
//Problem: 10
clc;

//Declaration of Constant
N = 6.023 * 10 ** 23

// Variables
D = 0.53                //in g per cm cube
MM = 6.94               //in g per mol
n = 2

// Solution
mprintf("For BCC pattern,\n")
mprintf(" Number of Atoms per unit cell = 2\n")
V = D * N / (n * MM)
V = 1 / V
mprintf(" Volume of a unit cell of lithium metal is %.2e cc",V)
