pathname=get_absolute_file_path('5_03.sce')
filename=pathname+filesep()+'5_03data.sci'
exec(filename)
Cp=(P1-P)/q;disp(Cp,"Cp=","Cp=(P1-P)/q","pressure coefficient Cp :")
printf("\Answer:\n")
printf("\n\pressure coefficient at this point of wing: %f \n\n",Cp)