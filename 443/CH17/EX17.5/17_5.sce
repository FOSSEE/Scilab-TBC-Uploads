pathname=get_absolute_file_path('17_5.sce')
filename=pathname+filesep()+'17_5_data.sci'
exec(filename)
//Average brake power for 3 cylinders
BPavg=(2*%pi*N*T)/60000
//Average indicated power for 1 cylinder
IPavg=BP-BPavg
//Total indicated power
IP=k*IPavg
//Indicated specific fuel consumption
isfc=bsfc*(BP/IP)
//Fuel consumption
mf=(isfc*IP)/(3600*1000)
//Indicated thermal efficiency
nith=IP/(mf*CV)*100
printf("\n\nRESULTS\n\n")
printf("\nIndicated thermal efficiency:%f\n",nith)

