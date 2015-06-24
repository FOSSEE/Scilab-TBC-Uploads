clc
pathname=get_absolute_file_path('7_2_2.sce')
filename=pathname+filesep()+'722.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
Power=mdot*g*(z2-z1)
printf(" \n Power=%d J/s",Power)