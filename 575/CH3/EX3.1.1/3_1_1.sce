clc
pathname=get_absolute_file_path('3_1_1.sce')
filename=pathname+filesep()+'311.sci'
exec(filename)
density=13.546*62.43
printf("density of mercury=%f lbm/ft^3",density);
//the multiplication factor is to convert density from gm/cc to lbm/ft^3.
volume=mass/(.454*density) ; //ft^3
//the division by 0.454 is to convert mass in kg to lbm.
printf(" \n The volume of %d kg of mercury is %f ft^3",mass,volume)
