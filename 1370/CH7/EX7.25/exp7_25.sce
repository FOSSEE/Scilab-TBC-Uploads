//example7.25
clc
disp("For a half wave rectifier,")
disp("(I_m) = (E_sm)/(R_f+R_L)")
disp("and, (I_DC) = (I_m)/pi = (E_sm)/pi*(R_f+R_L)")
disp("and, (V_DC) = (I_DC)*(R_L)")
disp("Therefore, (P_DC) = (V_DC)*(I_DC) = (I_DC^2)*(R_L) = ((E_sm^2)*(R_L))/((pi^2)*(R_f+R_L)^2)")
disp("For this power to be maximum,")
disp("(dP_DC)/(dR_L) = 0")
disp("(d/dR_L)*((E_sm^2)*(R_L))/((pi^2)*(R_f+R_L)^2) = ((E_sm^2)/(pi^2))*((R_f+R_L)^2 - R_L*2(R_f+R_L))/(R_f+R_L)^4")
disp("Therefore,  (R_f+R_L)^2 - 2*R_L*(R_f+R_L) = 0")
disp("Therefore,  (R_f^2)-(R_L^2) = 0")
disp("Therefore,  (R_L)^2 = (R_f)^2     i.e.     R_L = R_f")
disp("Thus the power output is maximum if R_L = R_f")
