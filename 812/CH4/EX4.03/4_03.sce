//density//
pathname=get_absolute_file_path('4.03.sce')
filename=pathname+filesep()+'4.03-data.sci'
exec(filename)
//Rate of change of air density in tank(in (kg/m^3)/s):
r=-d*v*A/V/10^6
printf("\n\nRESULTS\n\n")
printf("\n\nRate of change of air density in tank: %.3f kg/m^3\n\n",r)
printf("\n\nThe density decreases as is indicated by the negative sign\n\n")
