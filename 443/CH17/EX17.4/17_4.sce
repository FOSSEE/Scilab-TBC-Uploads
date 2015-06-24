pathname=get_absolute_file_path('17_4.sce')
filename=pathname+filesep()+'17_4_data.sci'
exec(filename)
//Indicated thermal efficiency of the engine
nith=(P/(Vf*Pf*CV))*100
printf("\n\nRESULTS\n\n")
printf("\nIndicated thermal efficiency:%f\n",nith)