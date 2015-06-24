//Example 2.36
clc
disp("f = 2 kHz")
disp("f = 1/ 2*pi*R*c*sqrt(6)              ...For phase shift oscillator")
disp("Choose  C = 1 nF")
r=(1/(2*%pi*2*sqrt(6)*10^-6))*10^-3
format(7)
disp(r,"Therefore,  r(in k-ohm) =")
disp("Select FET with g_m = 5000 us and r_d = 50 k-ohm")
disp("For phase shift oscillator, |A| >= 29 and |A| = g_m*R_L")
disp("Therefore,  g_m*R_L >= 29")
rl=(29/(5000*10^-6))*10^-3
disp(rl,"i.e.  R_L(in k-ohm) >= 29/g_m >=")
disp("Select  R_L = 6.8 k-ohm")
disp("But  R_L = R_D*r_d / R_D+r_d")
rd=7.87
disp(rd,"Therefore,  R_D(in k-ohm) =")
