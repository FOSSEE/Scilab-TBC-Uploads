clc
pathname=get_absolute_file_path('3_4_1.sce')
filename=pathname+filesep()+'3_4_1.sci'
exec(filename)
Pressure=Pressure*1000/(13600*9.807)
printf("Pressure =%E mm of Hg",Pressure)