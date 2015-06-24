//Example 5.11
clc
disp("(i)  R_L = r_d || R_p")
disp("R_p = Tank circuit impedance at resonance = L / CR")
disp("f_r = 1 / 2*pi*sqrt(L*C)")
c=(1/(4*%pi^2*200*1.59^2*10^6))*10^12
format(3)
disp(c,"Therefore,  C(in pF) = 1 / 4*pi^2*f_r^2*L =")
disp("Q = omega_r*L / R = 2*pi*f_r*L / R")
r=(2*%pi*200*1.59)/50
disp(r,"Therefore,  R(in ohm) = 2*pi*f_r*L / Q =")
rf=((200*10^-6)/(50*40*10^-12))*10^-3
format(4)
disp(rf,"R_F(in k-ohm) = L / C*R =")
rl=(500*100)/600
format(6)
disp(rl,"R_L(in k-ohm) = r_d*R_p / r_d+R_p =")
av=5*83.33
format(7)
disp(av,"A_v = -g_m*R_L =        at resonance frequency omega_r")
disp("(ii) At  f = f_r+10 kHz = 1.6 MHz")
disp("|A_v / A_v(at resonance)| = 1 / sqrt(1+(f/f_r)^2)")
ava=416.67/sqrt(1+((1.6/1.59)^2))
format(6)
disp(ava,"Therefore,  |A_v| = |A_v(at resonance| / sqrt(1+(f/f_r)^2) =")
