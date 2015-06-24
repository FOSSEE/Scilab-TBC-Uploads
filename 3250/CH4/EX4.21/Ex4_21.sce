clc 
// Given that
w = 25 // Width of mild steel block in mm
d= 0.05 // Depth of cut in mm
D = 200 // Diameter of the wheel in mm
N = 3000 // Rpm of the wheel
f =100 // Feed velocity of table in mm/min
C = 3 // No of grits in mm^-2
rg = 15 // In mm^-1
// Sample Problem 21 on page no. 248
printf("\n # PROBLEM 4.21 # \n")
t1_max = sqrt(((6*f)/(%pi*D*N*C*rg))*sqrt(d/D))
t1_a = t1_max/2
U_0 = 1.4 // From the table 4.4 given in the book
Uc= U_0*((t1_a)^(-.4))
R = w*d*f/60
P = Uc*R
Fc = 60000*(P)/(%pi*D*N)
printf(" \n Grinding force = %d N",Fc)
