//Soultion 3-03
WD=get_absolute_file_path('3_03_solution.sce');
datafile=WD+filesep()+'3_03_example.sci';
clc;
exec(datafile)
//(a)
P_gauge1 = rho * g * h_bottle1; //Basic Pressure formula
P_gauge1 = P_gauge1 / 1000; //conversion from [Pa] to [kPa]
printf("Gauge pressure of blood is %1.2f kPa", P_gauge1);
//(b)
P_gauge2 = P_gauge2 * 1000;
h_bottle2 = P_gauge2 / (rho * g);
printf("\nHeight required for maintaining 20kPa pressure is %1.2f m", h_bottle2);
