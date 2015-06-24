//pathname=get_absolute_file_path('2.03.sce')
//filename=pathname+filesep()+'2.03-data.sci'
//exec(filename)
//EMF at temperature T=0
E0=0.003*0-5*(10^-7)*(0^2)+0.5*10^-3
//EMF at temperature T=100
E100=0.003*100-5*(10^-7)*(100^2)+0.5*10^-3
//EMF at temperature T=30
E30=0.003*30-5*(10^-7)*(30^2)+0.5*10^-3
//Temperature shown by the thermometer at T=30:
t=(E30-E0)/(E100-E0)*(100-0)
printf("\n\nRESULT \n\n")
printf("\n\n The temperature shown by thermometer= %f \n\n",t)
