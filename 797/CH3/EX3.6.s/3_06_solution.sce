//Soultion 3-06
WD=get_absolute_file_path('3_06_solution.sce');
datafile=WD+filesep()+'3_06_example.sci';
clc;
exec(datafile)
P_atm = P_atm * 1000;
P_1 = P_atm - rho_water * g * h_1 - rho_oil * g * h_2 + rho_mercury * g * h_3; //pressure equilibrium
P_1 = P_1 / 1000; //converting from [Pa] to [kPa]
//result
printf("Air pressure in the tank is %1.0f kPa", P_1);
