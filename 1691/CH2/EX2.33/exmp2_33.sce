//Example 2.33
clc
disp("Using the expression of the frequency,")
disp("f = 1 / 2*pi*RC*sqrt(6)")
c=(1/(2*%pi*10*sqrt(6)*10^6))*10^9
format(7)
disp(c,"Therefore,  C(in nF) =")
disp("For FET phase shift oscillator,")
disp("|A| = g_m*R_L  and  |A| >= 29")
rl=(29/5000)*10^3
format(4)
disp(rl,"Therefore,  g_m*R_L >= 29  i.e.  R_L(in k-ohm) >=")
disp("With R_L = 5.8 k-ohm,")
disp("R_L = R_D*r_d / R_D+r_d")
rd=40/5.8965
format(7)
disp(rd,"Therefore,  R_D(in k-ohm) =")
