pathname=get_absolute_file_path('11_01.sce')
filename=pathname+filesep()+'11_01data.sci'
exec(filename)
Cp=Cpmax*(sin(theta))^2;
disp(Cp,"Cp=","Cp=Cpmax*(sin(theta))^2","pressure coefficient at point 1 Cp:")
printf("\Answer:\n")
printf("\n\pressure coefficient at point 1 : %f \n\n",Cp)
