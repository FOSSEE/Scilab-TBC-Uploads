//Example 6.1
clc
ibq=(20-0.7)/1.5
format(6)
disp(ibq,"(i) I_BQ(in mA) = V_CC-V_BE / R_B =")
icq=50*12.87
format(7)
disp(icq,"I_CQ(in mA) = beta * I_BQ =")
disp("(ii) V_CC = I_CQ*R_L + V_CEQ")
vceq=20-(643.5*16*10^-3)
format(5)
disp(vceq,"Therefore,  V_CEQ(in V) = V_CC - I_CQ*R_L =")
format(6)
pdc=20*643.5*10^-3
disp(pdc,"(iii) P_DC(in W) = V_CC * I_CQ =")
disp("(iv) P_ac Peak current i_b = 9 mA")
ic=50*9
format(4)
disp(ic,"i_c(in mA) = beta * i_b =")
icm=450/sqrt(2)
format(8)
disp(icm,"Therefore,  i_c(rms) = I_rms(in mA) = i_c(peak) / sqrt(2) =")
pac=318.19^2*16*10^-6
format(7)
disp(pac,"Therefore,  P_ac(in W) = (I_rms)^2 * R_L =")
n=(1.619*100)/12.87
disp(n,"(v) Efficiency eta(in percentage) = P_ac/P_DC * 100 =")
