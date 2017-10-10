//Soultion 3-04
WD=get_absolute_file_path('3_04_solution.sce');
datafile=WD+filesep()+'3_04_example.sci';
clc;
exec(datafile)
P_1 = rho_0 * g * h_1; //Gauge pressure at the bottom of surface zone [Pa]
P_2 = P_1 + rho_0 * g * 4 *H / %pi * asinh(tan( %pi * H / (4 * H))); //After integrating w.r.t depth s
P_2 = P_2 / 1000; //conversion from [Pa] to [kPa]
//result
printf("Pressure at the bottom of Gradient layer is %1.1f kPa",P_2);
