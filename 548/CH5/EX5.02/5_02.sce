pathname=get_absolute_file_path('5_02.sce')
filename=pathname+filesep()+'5_02data.sci'
exec(filename)
printf("\Answer:\n")
printf("\n\angle of attack for 700 N lift: %f degree\n\n",a)
printf("\n\angle of attack for zero lift:: %f degree\n\n",a1)
