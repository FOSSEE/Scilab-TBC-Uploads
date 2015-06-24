clc
pathname=get_absolute_file_path('7_7_3.sce')
filename=pathname+filesep()+'773.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
mdot= -Ws/(deltaP/D + g*deltaZ)
printf(" \n Water flow rate=%f kg/s",mdot)