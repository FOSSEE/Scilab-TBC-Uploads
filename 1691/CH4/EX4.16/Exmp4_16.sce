//Example 4.16
clc
disp("Hybrid-pi Equivalent is as shown in fig.4.29")
disp("(i) Mid frequency voltage gain :")
disp("V_o / V_s = -h_fe*R_L / R_s+h_ie")
hie=(100+1000)*10^-3
format(4)
disp(hie,"h_ie(in k-ohm) = r_bb'' + r_b''e =")
hfe=0.2*1000
disp(hfe,"h_fe = g_m * r_b''e =")
vo=-200/2
disp(vo,"Therefore,  V_o / V_s =")
fb=(1/(2*%pi*1000*(204*10^-12)))*10^-3
format(7)
disp(fb,"(ii) f_beta(in kHz) = 1 / 2*pi*r_b''e*(C_e+C_C) =")
format(4)
disp(fb,"f_beta(in kHz) = ")
ft=(200*780)*10^-3
disp(ft,"(iii) f_T(in kHz) = h_fe * f_beta =")
