//Soultion 3-05
WD=get_absolute_file_path('3_05_solution.sce');
datafile=WD+filesep()+'3_05_example.sci';
clc;
exec(datafile)
rho = SG * rho_water; //definition of specific gravity
P_atm = P_atm * 1000; //converting from [kPa] to [Pa]
h = h / 100; //converting from [cm] to [m]
P = P_atm + rho * g * h; //Pressure in manometer
P = P / 1000; //converting from [Pa] to [kPa]
//result
printf("Absolute pressure in the tank is %1.1f kPa", P);
