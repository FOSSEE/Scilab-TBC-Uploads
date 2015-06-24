//Example 4.1
clc
gm=(1/26)*10^3
format(6)
disp(gm,"(i) g_m(in mA/V) = I_C / V_T =")
rbe=200/(38.46)
format(5)
disp(rbe,"(ii) r_b''e(in k-ohm) = h_fe / g_m =")
cc=((38.46*10^-3)/(500*10^6))*10^12
format(6)
disp(cc,"(iii) (C_e + C_C)(in pF) = g_m / 2*pi*f_T = g_m / omega_T =")
cbe=76.92-3
disp(cbe,"Therefore,  C_b''e(in pF) = C_e =")
disp("(iv) We know that,")
disp("f_T = h_fe*f_beta")
disp("Therefore,  2*pi*f_T = h_fe*2*pi*f_beta")
disp("omega_T = h_fe*omega_beta")
ob=((500*10^6)/200)*10^-3
format(5)
disp(ob,"omega_beta(in rad/sec) = omega_T / h_fe =")
