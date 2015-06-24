//Example 5.12
clc
fr=1/(2*%pi*sqrt(100*1000*10^-18))
format(8)
disp(fr,"(i) Resonant frequency f_r(in kHz) = 1 / 2*pi*sqrt(L*C) =")
disp("(ii) Tank circuit impedance at resonance can be given as")
rp=((100*10^6)/5000)*10^-3
disp(rp,"R_P(in k-ohm) = L / C*R =")
av=(-5*10^-3)*((500*20*10^3)/(520))
format(6)
disp(av,"(iii)  A_v = -g_m*R_L = -g_m*(r_d||R_P) =")
bw=(5/(2*%pi*100*10^-6))*10^-3
disp("(iv)  BW = f_r/Q")
disp("      BW = f_r*R / omega_r*L    Therefore, Q = omega_r*L / R")
disp(bw,"      BW(in kHz) = R / 2*pi*L =")
