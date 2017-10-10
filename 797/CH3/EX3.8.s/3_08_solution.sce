//Soultion 3-08
WD=get_absolute_file_path('3_08_solution.sce');
datafile=WD+filesep()+'3_08_example.sci';
clc;
exec(datafile)
A = b * h; //area of door
P_avg = rho * g * (s + b / 2); //hydrostatic pressure formula
F_g = P_avg * A;
F_g= F_g / 1000; //conversion from [N] to [kN]
printf("Hydrostatic force on the door is %1.2f kN", F_g);
y_p = s + b / 2 + b**2 / (12 * (s + b / 2)) //formula for centre of pressure for P_o=0
printf("\nThe center of pressure is %1.2f m", y_p)
