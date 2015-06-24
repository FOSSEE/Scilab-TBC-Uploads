pathname=get_absolute_file_path('3_04.sce')
filename=pathname+filesep()+'3_04data.sci'
exec(filename)
printf("\Answer:\n")
printf("\pressur altitude: %f Km\n",Hp)
printf("\n\density altitude : %f Km\n\n",Hd)
