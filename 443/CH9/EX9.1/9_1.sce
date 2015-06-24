pathname=get_absolute_file_path('9_1.sce')
filename=pathname+filesep()+'9_1_data.sci'
exec(filename)
//Fuel consumed per hour
mft=bsfc*P
//Fuel consumed per cylinder
mf=mft/k
//Fuel consmed per cycle(in kg)
mfc=((mf/60)/(N/2))
//Volume of fuel injected(in cc/cycle)
V=mfc/Pf*10^3
printf("\n\nRESULTS\n\n")
printf("\nFuel consumed per hour:%f\n",mft)
printf("\nFuel consumed per cyliner:%f\n",mf)
printf("\nFuel consumed per cycle:%f\n",mfc)
printf("\nVolume of fuel injected:%f\n",V)