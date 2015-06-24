//Example 2.29
clc
disp("L_s = 0.8 H,  C_s = 0.08 pF,  R_s = 5 k-ohm,  C_M = 1 pF")
fs=(1/(2*%pi*sqrt(0.8*0.08*10^-12)))*10^-3
format(9)
disp(fs,"f_s(in kHz) = 1 / 2*pi*sqrt(C_s*L_s) =")
ceq=(0.08*10^-12)/1.08
format(11)
disp(ceq,"C_eq(in F) = C_M*C_s / C_M+C_s =")
fp=(1/(2*%pi*sqrt(0.8*7.4074*10^-14)))*10^-3
format(9)
disp(fp,"Therefore,  f_p(in kHz) = 1 / 2*pi*sqrt(C*L_eq) =")
