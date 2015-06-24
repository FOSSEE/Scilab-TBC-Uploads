pathname=get_absolute_file_path('4_06.sce')
filename=pathname+filesep()+'4_06data.sci'
exec(filename)
printf("\Answer:\n")
printf("\n\internal energy per unit mass in SI unit: %f J/Kg.K\n\n",e)
printf("\n\internal energy per unit mass in English enginering unit: %f Ft.Lb/slug\n\n",e1)
printf("\n\enthalpy per unit mass in SI unit: %f J/Kg.K\n\n",h)
printf("\n\enthalpy per unit mass in English enginering unit: %f Ft.Lb/slug\n\n",h1)


