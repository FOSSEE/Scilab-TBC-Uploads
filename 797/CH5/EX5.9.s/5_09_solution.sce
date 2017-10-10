//Solution 5-09
WD=get_absolute_file_path('5_09_solution.sce');
datafile=WD+filesep()+'5_09_example.sci';
clc;
exec(datafile)
V_A = V_A * 1000 / 3600; //conversion from [kmph] to [m/s]
P_atmair = P_atmair / 100; //conversion from [cm of Hg] to [m og Hg]
P_air = P_air / 100; //conversion from [cm of Hg] to [m of Hg]
//(a)
h_1 = rho_Hg / rho_sw * (P_atmair - P_air); //from pressure realtion P=rho*g*h
printf("Ocean swell at point 3 is %1.2f m", h_1);
//(b)
h_air = (V_A)^2 / (2 * g); //Bernoulli equation application between A and B
rho_air = P_air / P_atmair * rho_atmair //from ideal gas equation
h_dynamic = rho_air / rho_sw * h_air; //surge of point 2 from point 3
h_2 = h_1 + h_dynamic; //total surge at point 2
printf("\nOcean swell at point 2 is %1.2f m", h_2);
