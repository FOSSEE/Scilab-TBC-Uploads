//Example 7.3
clc
disp("Electron density = n_i = carrier intrinsic concentration")
disp("Therefore,  n_i = 1.5*10^16 /m^3")
disp("For intrinsic semiconductor,")
disp("  sigma_i = n_i*(u_n + u_p)*e")
disp("where  e = charge on one electron = 1.6*10^-19 C")
sig=(1.5*10^16)*(0.14+0.05)*(1.6*10^-19)
format(9)
disp(sig,"Therefore  sigma_i(in per ohm-m) = Conductivity =")
rho=1/0.000456
format(9)
disp(rho,"Therefore,  rho(in ohm-m) = Resistivity = 1/sigma_i =")
disp("       Now    R = roh*l/A")
disp("Therefore,  V/A = roh*l/A")
l=((9*2.5*10^-4)/(2192.982*1.2*10^-3))*10^3
format(6)
disp(l,"Therefore,  l(in mm) =")
disp("This is the length of the bar")
