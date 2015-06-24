pathname=get_absolute_file_path('4_1.sce')
filename=pathname+filesep()+'4_1data.sci'
exec(filename)
Ra= W*(L-a)/L;
Rb= W*a/L;
printf("\nRA: %f N",Ra);
printf("\nRB: %f N",Rb);