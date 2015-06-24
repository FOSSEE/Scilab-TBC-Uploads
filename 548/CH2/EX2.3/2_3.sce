pathname=get_absolute_file_path('2_3.sce')
filename=pathname+filesep()+'2_3data.sci'
exec(filename)
density=P/(R*T);
v=1/density;//specific volume
printf("\Answer:\n")
printf("\n\Density of air: %f Kg/m^3\n\n",density)
printf("\n\Specific volume of air: %f m^3/Kg\n\n",v)


