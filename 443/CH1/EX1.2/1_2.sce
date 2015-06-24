pathname=get_absolute_file_path('1_2.sce')
filename=pathname+filesep()+'1_2_data.sci'
exec(filename)
//solving simultaneously for indicated power using fp/bp=nm and fp+bp=ip:
ip=fp/(1-nm)
//brake power(in kw):
bp=ip-fp
printf("\n\nRESULTS\n\n")
printf("\nindicated power:%f\n",ip)
printf("\nbrake power:%f\n",bp)