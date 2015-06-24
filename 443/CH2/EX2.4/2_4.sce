pathname=get_absolute_file_path('2_4.sce')
filename=pathname+filesep()+'2_4_data.sci'
exec(filename)
//No work is done by the part of the external boundary in contact with the bottle.only the moving part needs to be considered.Over this part pressure is uniform at 1.013*10^5 N/m^2
//Work done 
Wd=Patm*V
printf("\n\nRESULTS\n\n")
printf("\nWork done:%f\n",Wd)
//The work done is negative as the boundary is contracting