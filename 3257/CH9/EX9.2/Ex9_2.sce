// Forces in surface grinding
clc
d = 0.04 // depth of cut in mm
D  = 200 // diameter in mm
N = 3600 // Rotation in rpm
w = 20 // width of cut in mm
v = 1200 // velocity in mm/min
u = 41 // specific energy in W-s/mm^3
x = 0.3 // fractional increase
printf("\n Example 9.2")
mrr = d*w*v*10
power = u*mrr/60
T = power/(2*%pi*N/60)
F_c = T/(D*1e-3/2)
F_n = (1+x)*F_c

printf("\n\n Forces in surface grinding are as: \n F_c:%d N \t F_n: %d N",F_c, F_n)
