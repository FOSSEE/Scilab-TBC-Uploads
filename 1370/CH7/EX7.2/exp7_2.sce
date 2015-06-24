//Example 7.2
clc
disp("The given values are, n_i = 1.5*10^10 / cm^3")
disp("Therefore,  n_i = 1.5*10^10/10^-6 /m^3")
disp("                = 1.5*10^16 /m^3")
disp("And  u_n = 1300*10^-4 m^2/V-sec")
disp("     u_p = 500*10^-4 m^2/V-sec")
disp("Now  sigma_i = n_i*(u_n + u_p)*e             ...conductivity")
sig=(1.5*10^16)*(1300+500)*(1.6*10^-23)
format(9)
disp(sig,"Therefore  sigma_i(in per ohm-m) =")
rho=1/0.000432
format(10)
disp(rho,"Therefore,  rho(in ohm-m) = 1/sigma_i =")
disp("This is the required resistivity")
