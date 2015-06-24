pathname=get_absolute_file_path('3_01.sce')
filename=pathname+filesep()+'3_01data.sci'
exec(filename)
printf("\Answer:\n")
printf("\pressure at an altitude of 14 Km: %f N/m^2\n",P2)
printf("\n\density at an altitude of 14 Km: %f Kg/m^3\n\n",D2)

