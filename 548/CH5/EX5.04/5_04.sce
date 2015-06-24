pathname=get_absolute_file_path('5_04.sce')
filename=pathname+filesep()+'5_04data.sci'
exec(filename)
Cp=(P1-P)/q;disp(Cp,"Cp=","Cp=(P1-P)/q","pressure coefficient Cp :")
printf("\Answer:\n")
printf("\n\pressure coefficient : %f \n\n",Cp)