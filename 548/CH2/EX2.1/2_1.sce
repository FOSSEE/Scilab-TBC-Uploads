pathname=get_absolute_file_path('2_1.sce')
filename=pathname+filesep()+'2_1data.sci'
exec(filename)
T=p/((density)*(R))
printf("\Answer:\n")
printf("\n\Temperature at that point %f K\n\n",T)
