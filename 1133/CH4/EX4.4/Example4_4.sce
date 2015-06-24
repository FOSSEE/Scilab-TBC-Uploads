//Example 4.4
clc
disp("Using the expression for the frequency")
disp("Now,  f = 1 / 2*pi*R*C*sqrt(6)")
f=(1/(sqrt(6)*2*%pi*9.7*5*10^6))*10^9  // in nF
format(5)
disp(f,"Therefore,  C(in nF) =")
disp("Now using the equation(27)")
disp("  |A| = g_m * R_L")
disp("Therefore,  |A| >= 29")
disp("Therefore,  g_m * R_L >= 29")
rl=(29/(5000*10^-6))*10^-3  // in k-ohm
format(4)
disp(rl,"Therefore,  R_L(in k-ohm) >= 29 / g_m =")
disp("  R_L = R_D*r_d / R_D+r_d")
rd=(40)/4.8823
format(5)
disp(rd,"  Therefore,  R_D(in k-ohm) = ")
disp("While for minimum value of R_L = 5.8 k-ohm")
disp("                           R_D = 6.78 k-ohm")
