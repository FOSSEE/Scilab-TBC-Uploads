// Force in hot extrusion
clc
D = 150 // initial diameter in mm
H = 300 // height in mm
v = 330 // velocity in m/sec
d = 75 // final diameter in mm
mu = 0.1 // frictional coefficient
C = 240 // in MPa
m = 0.06 // constant
a = 0.8 // from table
b = 1.5 // from table
printf("\n Example 6.6")
R = D^2/d^2 // its calculated value in book is 2, while in actual its 4 
epsilon = 6*(H*1e-3)*log(R)/(D*1e-3)
sigma = C*epsilon^m
Y_bar = sigma // assumption
p = Y_bar*(a+b*log(R))
F = p*1e6*%pi*(D*1e-3)^2/4
printf("\n Force required for rolling is %.1e N.",F)
// Answer in book is 8.8e6 N. It is because of wrong calculation of value of R

