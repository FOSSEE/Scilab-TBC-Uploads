pathname=get_absolute_file_path('4_5.sce')
filename=pathname+filesep()+'4_5data.sci'
exec(filename)
clear
theta=(W*L^2)/(16*E*I);//θA
printf("\nθA: %f",theta);