clc 
// Given that
V = 500 // voltage across the electrode in eV
m = 9e-31 // mass of electron in kg
e = 1.6e-19 // charge on an electron in coulomb
// Sample Problem 1 on page no. 6.20
printf("\n # PROBLEM 1 # \n")
E = e * V
v = sqrt((2 * e * V) / m)
p = m * v
printf("\n Standard formula used \n E = e * V. \n v = sqrt((2 * e * V) / m). \n p = m * v. \n ")
printf("\n Energy gained by electron = %e J,\n Speed of electron = %e meter/sec,\n Momentum of electron = %e kg-meter/sec",E,v,p)
