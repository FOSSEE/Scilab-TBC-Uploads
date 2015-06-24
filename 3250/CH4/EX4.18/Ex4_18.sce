clc 
// Given that
w = 20 // Width of the mild steel block in mm
Z = 10 // No of teeth in milling cutter
D = 75 // Diameter of the milling cutter in mm
alpha = 10 // Radial rake angle in Degree
f = 25 // Feed velocity of the table in mm/min
N =60 // Rpm of the cutter
t = 5 // Depth of cut in mm
mu = 0.5 // Cofficient of friction
T_s = 400 // Shear yield stress in N/mm^2
t_a = 0.043 // Avg uncut thickness in mm
// Sample Problem 18 on page no. 240
printf("\n # PROBLEM 4.18 # \n")
R = f*t*w/60
Uc = 3.3 // Specific energy in J/mm^3 from the table 4.14 Given in the book
U = Uc * R
printf(" \n Power required = %d W.",ceil(U))
