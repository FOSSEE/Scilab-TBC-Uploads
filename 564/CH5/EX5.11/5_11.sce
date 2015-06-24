pathname=get_absolute_file_path('5_11.sce')
filename=pathname+filesep()+'5_11data.sci'
exec(filename)
VB=(W*L^3)/(48*EI);
printf("\nVB: %f m",VB);