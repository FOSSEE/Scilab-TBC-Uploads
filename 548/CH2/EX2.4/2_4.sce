pathname=get_absolute_file_path('2_4.sce')
filename=pathname+filesep()+'2_4data.sci'
exec(filename)
printf("\Answer:\n")
printf("\n\Density of air at the given point: %f Kg/m^3\n\n",density)