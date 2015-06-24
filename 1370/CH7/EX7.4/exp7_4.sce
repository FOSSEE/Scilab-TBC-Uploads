//Example 7.4
clc
disp("Given values are")
disp("  n_i = 2.5*10^13 /cm^3")
disp("Therefore,  n_i = 2.5*10^13/10^-6 /m^3")
disp("                = 2.5*10^19 /m^3")
disp("And  u_n = 3800*10^-4 m^2/V-sec")
disp("     u_p = 1800*10^-4 m^2/V-sec")
disp("  sigma_i = n_i*(u_n + u_p)*e")
sig=(2.5*10^19)*(3800+1800)*(1.6*10^-23)
format(5)
disp(sig,"Therefore  sigma_i(in per ohm-m) =")
rho=1/2.24
format(7)
disp(rho,"Therefore,  rho_i(in ohm-cm) = 1/sigma_i =")
