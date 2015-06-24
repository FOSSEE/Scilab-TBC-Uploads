// Calculation of maximum punch force
clc
L = 30 // diameter of punching in mm
t = 3 // thickness of sheet in mm
UTS = 1e3 // Tensile strength in MN
printf("\n Example 7.1")
F = 0.7*UTS*t*1e-3*L*1e-3*%pi
printf("\n Maximum required punching force is %.3f MN.",F) // Answer in book is 0.197 MN

