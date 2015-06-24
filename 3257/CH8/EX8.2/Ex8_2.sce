// Comparison of forming and machining energy
clc
d_i = 10 // diameter in mm
l = 125 // length in mm
del_d = 0.5 // reduction in diameter in mm
K = 1275 // constant in MPa
n = 0.45 // constant
Es = 4.1 // Specific energy in machining in W-S/mm^3
printf("\n Example 8.2")
printf("\n\n Part A:")
d_o = d_i - del_d
epsilon = log((d_i/d_o)^2)
u = K*1e6*epsilon^(n+1)/(1+n)
W_tension = u*%pi*l*1e-3*(del_d*1e-2)^2

printf("\n Work done by pulling in tension is %d Nm.",W_tension)
printf("\n\n Part B:")
V = %pi/4*(d_i^2-d_o^2)*l
W_mach = Es*V
ratio = W_mach/W_tension
printf("\n Work done by machining on lathe is %d Nm.",W_mach)
printf("\n Work done on machining is about %d time higher than that of tension.",ratio)

