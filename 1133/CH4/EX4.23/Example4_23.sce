//Example 4.23.
clc
f=(1/(2*%pi*sqrt(0.33*0.065*10^-12)))*10^-6  // in MHz
format(6)
disp(f,"(i)  f(in MHz) = 1 / 2*pi*sqrt(L*C) =")
ceq=0.065/1.065  // in pF
disp(ceq,"(ii)  C_eq(in pF) = C*C_M / C+C_M =")
fp=(1/(2*%pi*sqrt(0.33*0.061*10^-12)))*10^-6  // in MHz
disp(fp,"(i)  f_p(in MHz) = 1 / 2*pi*sqrt(L*C_eq) =")
pi=((1.121-1.087)/1.087)*100  // in percentage
disp(pi,"(iii)  % increase =")
q=(2*%pi*1.087*0.33*10^6)/(5.5*10^3)
format(8)
disp(q,"(iv)  Q = omega_x*L / R = 2*pi*f_s*L / R =")
