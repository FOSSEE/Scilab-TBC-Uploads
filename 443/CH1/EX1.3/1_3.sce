pathname=get_absolute_file_path('1_3.sce')
filename=pathname+filesep()+'1_3_data.sci'
exec(filename)
//indicated power(in kw):
ip=bp/nm
//frictional power(in kw):
fp=ip-bp
//brake power load(in kw):
bpl=l*bp
nml=bpl/(bpl+fp)
printf("\n\nRESULTS\n\n")
printf("\nindicated power:%f\n",ip)
printf("\nfrictional power:%f\n",fp)
printf("\nbrake power at load:%f\n",bpl)
printf("\mechanical efficiency:%f\n",nml=nml*100)
