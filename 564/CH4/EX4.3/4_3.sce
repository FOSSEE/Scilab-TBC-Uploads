pathname=get_absolute_file_path('4_3.sce')
filename=pathname+filesep()+'4_3data.sci'
exec(filename)
Fba=Loadc*(CD/BD);//FBA
printf("\nFBA: %f KN",Fba);