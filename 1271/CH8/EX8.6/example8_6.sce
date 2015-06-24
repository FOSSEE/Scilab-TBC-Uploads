clc 
// Given that
V = 1700 // volume in meter^3
a1 = 98 // area of plastered wall in m^2
a2 = 144 // area of plastered ceiling in m^2
a3 = 15 // area of wooden door in m^2
a4 = 88 // area of cushioned chairs in m^2
a5 = 150 // area of audience (each person) in m^2
k1 = 0.03 // coefficient of absorption for plastered wall in O.W.U.
k2 = 0.04 // coefficient of absorption for plastered ceiling in O.W.U.
k3 = 0.06 // coefficient of absorption for wooden door in O.W.U.
k4 = 1 // coefficient of absorption for cushioned chair in O.W.U.
k5 = 4.7 // coefficient of absorption for audience (each person) in O.W.U.
// Sample Problem 6 on page no. 8.20
printf("\n # PROBLEM 6 # \n")
printf(" Standard formula used \n")
printf(" T = 0.161 V/a*S \n" )
A1 = a1 * k1// calculation for the absorption by the plaster wall
A2 = a2 * k2// calculation for the absorption by the plastered ceiling
A3 = a3 * k3// calculation for wooden door
A4 = a4 * k4// calculation for cushioned chairs 
A = A1 + A2 + A3 + A4// calculation for total absorption
T = 0.161 * (V / A)// calculation for reverberation time

printf("\n Reverberation time is %f sec.",T)
