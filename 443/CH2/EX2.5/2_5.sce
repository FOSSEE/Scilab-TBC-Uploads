pathname=get_absolute_file_path('2_5.sce')
filename=pathname+filesep()+'2_5_data.sci'
exec(filename)
//work done
Wd=patm*V
printf("\n\nRESULTS\n\n")
printf("\nWork done:%f\n",Wd)