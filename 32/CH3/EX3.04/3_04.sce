//pathname=get_absolute_file_path('3.04.sce')
//filename=pathname+filesep()+'3.04-data.sci'
//exec(filename)
//Volume of the cylinnder(in m^3):
v=0.78
//Atmospheric pressure(in kPa):
p=101.325
//Work done(in kJ):
w=p*v
printf("\nRESULT\n")
printf("\nWork done by air= %f",-w)
printf("\nWork done by surroundings= %f",w)