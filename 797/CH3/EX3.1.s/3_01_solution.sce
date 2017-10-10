//Soultion 3-01
WD=get_absolute_file_path('3_01_solution.sce');
datafile=WD+filesep()+'3_01_example.sci';
clc;
exec(datafile)
P_abs = P_atm - P_vac; //Pressure relationship
printf("Absolute pressure of Vacuum chamber is %1.2f kPa", P_abs);
