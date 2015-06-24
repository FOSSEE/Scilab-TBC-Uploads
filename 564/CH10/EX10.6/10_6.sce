pathname=get_absolute_file_path('10_6.sce')
filename=pathname+filesep()+'10_6data.sci'
exec(filename)
omega=1.1584*(EI/(m*l^3));
printf("\nω1: %f",omega)