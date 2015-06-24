//Example 4.20
clc
disp("Assume that the output time-constant is negligible as compared to the time consedtant. When this is the case")
disp("A_vs = V_o/V_s = -g_m*R''_L*G''_s / G''_s+g_b''e+sC")
gs=6.66*10^-3
format(8)
disp(gs,"where  G''_s = 1 / (R_s||R_b)+r_bb'' =")
gbe=1/1000
format(6)
disp(gbe,"g_b''e = 1 / r_b''e =")
rl=(0.5/1.5)*10^3
format(7)
disp(rl,"R''_L(in ohm) = R_L || R_C =")
disp("  sC = admittance of C")
c=100+(3*(1+(50*333.33*10^-3)))
format(4)
disp(c,"where  C = C_e + C_C*(1+g_m*R''_L) =")
disp("At 10 kHz,")
sc=2*%pi*10*153*10^-9
format(8)
disp(sc,"sC = 2*pi*f*C =")
disp("Therefore, At 10kHz signal frequency")
avs=(-50*333.33*6.66*10^-6)/((6.66*10^-3)+(10^-3)+(9.613*10^-6))
format(6)
disp(avs,"A_vs = V_o / V_s =")
