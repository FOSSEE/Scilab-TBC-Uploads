pathname=get_absolute_file_path('5_05.sce')
filename=pathname+filesep()+'5_05data.sci'
exec(filename)
Cp=Cpo/(sqrt(1-M^2));disp(Cp,"Cp=","Cp=Cpo/(sqrt(1-M^2))","pressure coefficient Cp :")
printf("\Answer:\n")
printf("\n\pressure coefficient : %f \n\n",Cp)