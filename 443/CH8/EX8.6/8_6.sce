pathname=get_absolute_file_path('8_6.sce')
filename=pathname+filesep()+'8_6_data.sci'
exec(filename)
//pressure drop at throat without air cleaner(in bar)
dpa=pa-pt
//Pressure at throat with air cleaner(in bar)
ptn=pa-ph-dpa
//pressure drop at throat with air cleaner(in bar)
dpf=pa-(pa-ph-dpa)
//New air fuel ratio
AFn=AF*sqrt(dpa/dpf)
printf("\n\nRESULTS\n\n")
printf("\nThroat pressure when air cleaner is fitted:%f\n",dpf)
printf("\npressure at throat with air cleaner:%f\n",ptn)
printf("\nNew air fuel ratio:%f\n",AFn)