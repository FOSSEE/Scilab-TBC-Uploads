clc 
// Given that
B = 20 // Width of the cut in mm
Z = 10 // No of teeth in milling cutter
D = 75 // Diameter of the milling cutter in mm
alpha = 10 // Radial rake angle in Degree
f = 25 // Feed velocity of the table in mm/min
N =60 // Rpm of the cutter
t = 5 // Depth of cut in mm
mu = 0.5 // Cofficient of friction
T_s = 400 // Shear yield stress in N/mm^2
t_a = 0.043 // Avg uncut thickness in mm
// Sample Problem 17 on page no. 240
printf("\n # PROBLEM 4.17 # \n")
t1_max = 0.01
lambda = 0.28 // From the table 4.13 Given in the book
nu = 1400 // From the table 4.13 Given in the book
t1_av = t1_max/2
P = nu*B*t*f*(10^-4)/(6*((t1_av)^(lambda)))
printf(" \n Power required = %f W.",P)
