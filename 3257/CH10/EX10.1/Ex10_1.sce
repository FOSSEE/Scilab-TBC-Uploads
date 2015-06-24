
// Degree of polymerization in polyvinyl chloride
clc
w_avg = 62500 // average molecular weight

A_H = 1 // Atomic weight of hydrogen
A_C = 12// Atomic weight of carbon
A_cl= 35.5 // Atomic weight of Chlorine
n_H= 3 // Number of hydrogen atoms in a molecule
n_C = 2// Number of carbon atoms in a molecule
n_cl = 1// Number of chlorine atoms in a molecule
printf("\n Example 10_1")
w  = A_H*n_H+A_C*n_C+A_cl*n_cl // molecular weight
D = w_avg/w

printf("\n Degree of polymerization in polyvinyl chloride is %d",D)

