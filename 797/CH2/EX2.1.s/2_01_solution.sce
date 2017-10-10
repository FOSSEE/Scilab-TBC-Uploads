//Solution 2-1
WD=get_absolute_file_path('2_01_solution.sce')
datafile=WD+filesep()+'2_01_example.sci'
clc;
exec(datafile)
rho = P / (R * (T + 273)) //ideal gas relation
SG=rho / rho_water //definition specific gravity
V = l * b * w //Volume in m^3
m = rho * V //Mass in kg
//Result
printf("Density of air is %1.2f kg/m^3",rho)
printf("\nSpecific gravity of air is %1.5f",SG)
printf("\nVolume of air is %1.2f m^3",V)
printf("\nMass of air is %1.0f kg",m)
