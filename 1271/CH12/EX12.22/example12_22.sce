clc 
// Given that
E = 3 // kinetic energy of proton in Mev
m1 = 1.007276 // mass of H(1) in a.m.u.
m2 = 3.016056 // mass of H(3) in a.m.u.
m3 = 1.008665 // mass of neutron in a.m.u.
m4 = 3.016036 // mass of He(3) in a.m.u.
// Sample Problem 22 on page no. 12.39
printf("\n # PROBLEM 22 # \n")
printf("Standard law used \n")
printf(" Law of conservation of Energy \n")
k = m1 + m2 - m3 - m4
E = k * 931.5
printf("\n Q value of reaction is %f MeV.",E)
