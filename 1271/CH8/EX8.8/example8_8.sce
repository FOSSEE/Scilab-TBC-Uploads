clc 
// Given that
V = 980 // volume in meter^3
a1 = 150 // area of wall in m^2
a2 = 95 // area of ceiling in m^2
a3 = 90 // area of floor in m^2
k1 = 0.03 // coefficient of absorption for wall in O.W.U.
k2 = 0.80 // coefficient of absorption for ceiling in O.W.U.
k3 = 0.06 // coefficient of absorption for floor in O.W.U.
// Sample Problem 8 on page no. 8.21
printf("\n # PROBLEM 8 # \n")
printf(" Standard formula used \n")
printf(" T = 0.161 V/a*S \n" )
A1 = a1 * k1
A2 = a2 * k2
A3 = a3 * k3
A = A1 + A2 + A3
T = 0.161 * (V / A)
printf("\n Reverberation time = %f sec",T)
