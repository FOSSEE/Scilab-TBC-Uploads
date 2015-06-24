
// Work done in stretch forming
clc
L_o = 400 // initial length in mm
L_f = 441.4 // final length in mm
C = 700 // in MPa
n = 0.3
a = 300 // cross sectional area in mm^2
A = 250 // distance between support and force point
B = 150 // distance between support and force point
epsilon = log(L_f/L_o)
printf("\n Example 7.4")
u = C*1e6*epsilon^(1+n)/(1+n)
V  = L_o*1e-3*a*1e-6
work = u*V
printf("\n\n Part A:")
printf("\n Total work done on ignoring end effect and bending is %d Nm.",work)
// Answer in book is 3133 Nm
printf("\n Part B:")
sigma = 0.3
L_max = L_o*exp(sigma)

a = 1/2*((A^2-B^2)/L_max + L_max)
b = L_max - a
alpha_max = acos(A/a)*180/%pi

printf(" \n Maximum value of alpha before necking begins is %.1f degrees.",alpha_max) // Answer in book is 35.4 degrees
