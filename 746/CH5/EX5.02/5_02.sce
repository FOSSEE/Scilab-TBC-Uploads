//Rate of change//
pathname=get_absolute_file_path('5.02.sce')
filename=pathname+filesep()+'5.02-data.sci'
exec(filename)
//Rate of change of density with time(in kg/m^3-s):
r=-d*V/L
printf("\n\nRESULTS\n\n")
printf("\n\nRate of change of density with time: %.1f kg/m^3-s\n\n",r)
