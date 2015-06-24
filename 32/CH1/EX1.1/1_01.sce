//pathname=get_absolute_file_path('1.01.sce')
//filename=pathname+filesep()+'1.01-data.sci'
//exec(filename)
//Manometer deflection of Mercury(in m):
h=30*10^-2
//Density of mercury(in kg/m^3)
d=13550
//Acceleration due to gravity(in m/s^2):
g=9.8
//Pressure difference(in Pa):
p=d*g*h*10^-2
printf("\n\n RESULT \n\n")
printf("\n\n Pressure Difference= %f Pa \n\n",p)
