pathname=get_absolute_file_path('3_03.sce')
filename=pathname+filesep()+'3_03data.sci'
exec(filename)
printf("\Answer:\n")
printf("\n\Temperature of air at flying altitude of airplane: %f K\n\n",T)