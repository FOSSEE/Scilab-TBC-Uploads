//Example 7.7
clc
disp("Referring to the table 7.2 of properties of germanium has 4.4*10^22 atoms/cm^3")
disp("For 10^8 germanium atom there is 1 atom impurity added, as given.")
disp("Thus, for 4.4*10^22 germanium atoms, we have,")
disp("       = 4.4*10^22 / 10^8 = 4.4*10^14 atoms of impurity/cm^3")
disp("This is nothing but concentration of donor atoms i.e. N_D")
disp("Therefore,  N_D = 4.4*10^14 per cm^3 = 4.4*10^14/10^-6 = 4.4*10^20 per m^3")
disp("Now as donor impurity is added, n-type material will form,")
disp("Therefore,  sigma_n = n_n*u_n*q = N_D*u_n*q")
disp("where  n_n ~ N_D and u_n = 3800 cm^2/V-sec = 3800*10^-4 m^2/V-sec")
sigm=4.4*3800*1.6*10^-3
format(7)
disp(sigm,"Therefore,  sigma_n(in per ohm-m) =")
rho=(1/26.752)*10^2
format(5)
disp(rho,"Therefore,  rho_n(in ohm-cm) = Resistivity = 1/sigma_i =")
disp("Comparing this with resistivity of intrinsic germanium it can be observed that resistivity reduces considerably due to addition of impurity. Hence conductivity of n-type material is much higher and hence it can carry more current as compared to the intrinsic semiconductors. By controlling amount of doping we can control the conductivity.")
