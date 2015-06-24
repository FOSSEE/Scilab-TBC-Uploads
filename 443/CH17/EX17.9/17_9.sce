pathname=get_absolute_file_path('17_9.sce')
filename=pathname+filesep()+'17_9_data.sci'
exec(filename)
//Brake specific energy consumption(Power remains same as in the previous problem)
bsec=(mf/bp)*CV*10^-3
//Indicated specific energy consumption(mechanical efficiency remains same as in previous problem)
isec=bsec*nm
printf("\n\nRESULTS\n\n")
printf("\nBrake specific energy consumption:%f\n",bsec)
printf("\nIndicated specific energy consumption:%f\n",isec)