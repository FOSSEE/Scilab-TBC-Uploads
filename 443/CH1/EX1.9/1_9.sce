pathname=get_absolute_file_path('1_9.sce')
filename=pathname+filesep()+'1_9_data.sci'
exec(filename)
//mechanical efficiency at full load
nm=bp/(bp+fp)
//mechanical effciciency at half load
nmh=0.5*bp/(0.5*bp+fp)
//mechanical efficiency at quarter load
nmq=0.25*bp/(0.25*bp+fp)
//mass flow rate of fuel
mf=bp/(nbth*CV)
//volume flow rate of fuel
vf=mf/(pg*1000)
//indicated thermal efficiency at full load
nith=nbth/nm
printf("\n\nRESULTS\n\n")
printf("\nmechanical efficiency at full load:%f \n",nm*100)
printf("\nmechanical effciciency at half load:%f\n",nmh*100)
printf("\nmechanical efficiency a quarter load:%f\n",nmq*100)
printf("\nmass flow rate of fuel:%f\n",mf)
printf("\nvolume flow rate of fuel:%f\n",vf)
printf("\nindicated thermal efficiency at full load:%f\n",nith*100)