pathname=get_absolute_file_path('17_8.sce')
filename=pathname+filesep()+'17_8_data.sci'
exec(filename)
//Brake specific fuel consumption
bsfc=(mf*3600)/(bp*1000)
//Indicated specific fuel consumption
isfc=bsfc*nm
printf("\n\nRESULTS\n\n")
printf("\nBrake specific fuel consumption:%f\n",bsfc)
printf("\nIndicated specific fuel consumption:%f\n",isfc)