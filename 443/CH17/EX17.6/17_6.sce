pathname=get_absolute_file_path('17_6.sce')
filename=pathname+filesep()+'17_6_data.sci'
exec(filename)
//Brake mean effective pressure
pbm=(16*T)/(D^2*L)
printf("\n\nRESULTS\n\n")
printf("\nBrake mean effective pressure:%f\n",pbm)