// Estimating springback
clc
Ri = 10 // initial radius in mm
Y = 205 // Yield stress in MPa
E = 190 // Youngs modulus  in GPa
t = 10 // thickness in mm
printf("\n Example 7.3")
K = Ri*Y*1e6/(E*1e9*t)
R_ratio = 4*K^3-3*K+1
printf("\n Estimated Springback is %.4f",R_ratio)
// Answer in book is 0.9967
