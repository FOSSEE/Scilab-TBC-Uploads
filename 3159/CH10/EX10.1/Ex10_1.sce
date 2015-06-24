// Estimate young’s modulus of material
clc
n = 1
m = 9
A = 7.68e-29 // Constant having unit J m 
r_0 = 2.5e-10 // bonding distance in m
printf("\n Example 10.1")
B = A*r_0^8/9

Y = (90*B/(r_0)^11-2*A/(r_0)^3)/r_0

printf("\n Young’s modulus of material is %d GN m^-2",Y/1e9)

