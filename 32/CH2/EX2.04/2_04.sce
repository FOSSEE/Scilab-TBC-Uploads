//pathname=get_absolute_file_path('2.04.sce')
//filename=pathname+filesep()+'2.04-data.sci'
//exec(filename)
//Temperature of gas using gas thermometer:
T1=50
//EMF at T=0:
E0=0.18*0-5.2*10^-4*(0^2)
//EMF at T=100:
E100=0.18*100-5.2*10^-4*(100^2)
//EMF at T=50:
E50=0.18*50-5.2*10^-4*(50^2)
//Temperature at EMF=E50:
t=(100-0)*E50/(E100-E0)
p=(t-50)/50*100
printf("\n\n RESULT \n\n")
printf("\n\n percentage variation= %f \n\n",p)
