//Example 2.15
clc
fs=(1/(2*%pi*sqrt(0.4*0.085*10^-12)))*10^-6  // in MHz
format(6)
disp(fs,"(i)  f_s(in MHz) = 1 / 2*pi*sqrt(L*C) =")
ceq=0.085/1.085  // in pF
disp(ceq,"(ii)  C_eq(in pF) = C*C_M / C+C_M =")
fp=(1/(2*%pi*sqrt(0.4*0.078*10^-12)))*10^-6  // in MHz  (the answer in textbook is wrong)
disp(fp,"Therefore,  f_p(in MHz) = 1 / 2*pi*sqrt(L*C_eq) =")
inc=((0.899-0.856)/0.856)*100  // in percentage
disp(inc,"(iii)  %increase =")
q=(2*%pi*0.4*0.856*10^6)/(5*10^3)
format(8)
disp(q,"(iv)  Q = omega_s*L / R = 2*pi*f_s*L / R =")
