//Solution 8-06
WD=get_absolute_file_path('8_06_solution.sce');
datafile=WD+filesep()+'8_06_example.sci';
clc;
exec(datafile)
//unit conversions
P_1 = P_1 * 1000 //from [kPa] to [Pa]
D_1 = D_1 / 100 //from [cm] to [m]
D_2 = D_2 / 100 //from [cm] to [m]
//calculation of loss coefficient for included angle of 20 and d/D = 6/9
K_L = 0.15 + (0.1 - 0.15) / 0.2 * (D_1/D_2 - 0.6) //interpolation from Table 8-4
V_2 = (D_1/D_2)**2 * V_1 //conservation of mass
h_L = K_L * (V_1)**2 /(2 * g)
printf("Head loss in the expansion section is %1.3f m", h_L)
P_2 = P_1 + rho * ((alpha_1 * V_1**2 - alpha_2 * V_2**2)/2 - g * h_L)
P_2 = P_2 / 1000
printf("\nPressure in the larger-diameter pipe is %1.0f kPa",P_2)