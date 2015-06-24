// Calculate the free energy change during recrystallization
clc
mu = 45.5e9
b = 2.55e-10
n1 = 1e9 // initial dislocation density
n2 = 1e13 // final dislocation density
printf("\n Example 9.6") 
E = 1/2*mu*b^2*n2
del_g = E // as difference between initial and final dislocation energy is four order magnitude
printf("\n Free energy change during recrystallization is %d J m^-3",-del_g)
// Numerical value of answer in book is 14800

