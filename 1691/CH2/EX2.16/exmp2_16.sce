//Example 2.16
clc
disp("    C_M = 2 pF")
fs=(1/(2*%pi*sqrt(2*0.01*10^-12)))*10^-6  // in MHz
format(6)
disp(fs,"Now  f_s(in MHz) = 1 / 2*pi*sqrt(L*C) =")
ceq=(2*0.01*10^-24)/(2.01*10^-12)  // in F
format(9)
disp(ceq,"  C_eq(in F) = C_M*C / C_M+C =")
fp=(1/(2*%pi*sqrt(2*9.95*10^-15)))*10^-6  // in MHz
format(6)
disp(fp,"  f_p = 1 / 2*pi*sqrt(L*C_eq) =")
disp("So f_s and f_p values are almost same.")
