// Calculation of fraction of hydrogen bonds which breaks during ice melting
clc
del_h = 6.02 // enthalpy of fusion in kJ/mol
n = 2 // number of hydrogen atom in 1 water atom
del_b = 20.5 // hydrogen bond energy in kJ/mol
printf("\n Example 4.4")
f = del_h/(n*del_b)
printf("\n Fraction of hydrogen bonds which broken is %.2f",f)

