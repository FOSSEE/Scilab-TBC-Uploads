clc 
// Given that
D = 250 // Diameter of the wheel in mm
N = 2000 // Rpm of the wheel
f =5 // Plung feed rate in mm/min
C = 3 // Surface density of active grain in mm^-2
A = 20*15 // Area of mild steel prismatic bar in mm^2
rg = 15 // In mm^-1
// Sample Problem 20 on page no. 246
printf("\n # PROBLEM 4.20 # \n")
t1 = sqrt(f/(%pi*D*N*C*rg))
U_0 = 1.4 // From the table 4.4 given in the book
Uc= U_0*((t1)^(-.4))
R = A*f/60
P = Uc*R
Fc_ = 60000*(P)/(%pi*D*A*C*N)
printf(" \n Power requirement during plunge grinding of the mild steel primatic bar = %d W.",ceil(P))
// Answer in the book is given as 94 W 
