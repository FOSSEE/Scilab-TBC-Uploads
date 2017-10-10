//Solution 2-3
WD=get_absolute_file_path('2_03_solution.sce')
datafile=WD+filesep()+'2_03_example.sci'
clc;
exec(datafile)
//(a)
deltarho = - beta_ * rho * (T_f - T_i); //def of coefficient of volume expansion
rho_2 = rho + deltarho; //actual density at 50 C and 1 atm pressure
//result
printf("Final density of water \n1.At 50C and constant pressure of 1 atm = %1.1f kg / m^3",rho_2);
//(b)
deltarho = alpha * rho * (P_f - P_i); //def of coefficient of compressiblity
rho_2 = rho + deltarho; //actual density at 20C and 100atm pressure
//result
printf("\n2.At 20C and 100 atm pressure = %1.1f kg / m^3",rho_2);