pathname=get_absolute_file_path('5_7.sce')
filename=pathname+filesep()+'5_7data.sci'
exec(filename)
clear
delY=(W*L^4)*((11/(24*EI))+ 1/(2*GJ));
delZ=(W*L^4)*((1/(6*EI))+ 1/(2*GJ));
printf("\ndel Y %f mm",delY);
printf("\ndel Z %f mm",delZ);