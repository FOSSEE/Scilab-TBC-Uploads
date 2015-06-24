// Calculate del_f_het as a fraction of del_f_homo
clc
Gamma_alpha_del = 0.5 // in J m^-2
Gamma_alpha_beta = 0.5 // in J m^-2
Gamma_beta_del = 0.01 // in J m^-2

printf("\n Example 9.4") 
theta = acos((Gamma_alpha_del -Gamma_beta_del)/Gamma_alpha_beta)
del_f_ratio = 1/4*(2-3*cos(theta)+(cos(theta))^3)


printf("\n del_f_het is %0.4fth fraction of  del_f_homo.",del_f_ratio)

