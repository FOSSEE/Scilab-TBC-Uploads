// Calculate the critical free energy of nucleation of ice from water and critical radius
clc
del_t1 = 0// temperature difference in degree Celsius
del_t2 = -5 // temperature difference in degree Celsius
del_t3 = -40 // temperature difference in degree Celsius
del_h = 6.02 // enthalpy of fusion in kJ/mol
T_m = 273 // mean temperature
Gamma = 0.076 // energy of ice water interface in J /m^2
v = 19 // molar volume of ice
printf("\n Example 9.1")
printf("\n Part A")
printf("\n At del_t = %d, there is no supercooling. So there is no critical radius",del_t1)
printf("\n\n Part B")
del_f = 16/3*%pi*(Gamma)^3*T_m^2/((del_h*1e3*1e6/v)^2*del_t2^2)
r = 2*T_m*Gamma/(-del_h*1e3*1e6/v*del_t2)
printf("\n Critical free energy of nucleation is %.1eJ",del_f)
printf("\n Critical radius is %d angstrom",ceil(r*1e10))
printf("\n\n Part C")
temp_r = del_t3/del_t2
del_f_ = del_f/temp_r^2
r_ = r/temp_r

 printf("\n Critical free energy of nucleation is %.1eJ",del_f_)
printf("\n Critical radius is %d angstrom.", ceil(r_*1e10))

