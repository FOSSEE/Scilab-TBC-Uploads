//Solution 5-07
WD=get_absolute_file_path('5_07_solution.sce');
datafile=WD+filesep()+'5_07_example.sci';
clc;
exec(datafile)
P_atm = P_atm * 1000; //conversion from [kPa] to [Pa]
D = D / 1000; //conversion from [mm] to [m]
V = V / 1000; //conversion from [litres] to [m^3]
//(a)
V_2 = sqrt(2 * g * z_1); //Toricelli equation
A = %pi * D^2 / 4;
Vdot = V_2 * A; //continuity equation
dt = V / Vdot;
printf("\nVelocity of water entering the gas can is %1.2f m/s", V_2);
printf("\nArea of cross section of siphon is %1.2e m^2", A);
printf("\nVolume flow rate of gasoline is %f L", Vdot * 1000);
printf("\nTime needed to siphon 4L of gasoline is %1.2f s", dt);
//(b)
P_3 = P_atm - rho * g * z_3; //application of Bernoulli equation between 2 and 3
P_3 = P_3 / 1000; //conversion from [Pa] to [kPa]
printf("\nPressure at point 3 in siphon is %1.2f kPa", P_3);
