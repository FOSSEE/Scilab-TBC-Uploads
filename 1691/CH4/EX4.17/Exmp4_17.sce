//Example 4.17
clc
disp("(i) We know that,")
disp("  f_H = 1 / 2*pi*R_eq*C_eq")
disp("where  R_eq = (R_s+r_bb'')*r_b''e / R_s+r_bb''+r_b''e")
disp("and  C_eq = C_e + C_C*[1+g_m*R_L]")
rbe=100/100
format(2)
disp(rbe,"  r_b''e(in k-ohm) = h_fo / g_m = ")
disp("C_eq = C_e + C_C*[1+g_m*R_L] = C_e + C_C[1+100*10^-3*500]")
disp("     = C_e + 51 pF")
ce=((100*10^-3)/(2*%pi*(400*10^6)))*10^12
format(6)
disp(ce,"C_e(in pF) = g_m / 2*pi*f_T =")
ceq=39.79+51
disp(ceq,"Therefore,  C_eq(in pF) =")
req=1/(2*%pi*5*90.79*10^-6)
disp(req,"R_eq(in ohm) = 1 / 2*pi*f_H*C_eq =")
disp("Therefore, 350.6 = (R_s+100)*1000 / R_s+1100")
rs=(285.66*10^3)/649.4
format(7)
disp(rs,"Therefore,  R_s(in ohm) =")
disp("(ii) The mid-band voltage gain V_o/V_s is given as")
disp("  V_o/V_s = -h_fe*R_L / R_s+h_ie")
hie=(100+1000)*10^-3
format(4)
disp(hie,"where  h_ie(in K) = r_bb'' + r_b''e =")
vo=(-100*500)/(439.88+1100)
format(6)
disp(vo,"Therefore,  V_o/V_s =")
