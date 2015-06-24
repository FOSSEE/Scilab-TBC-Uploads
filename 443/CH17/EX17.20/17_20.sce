pathname=get_absolute_file_path('17_20.sce')
filename=pathname+filesep()+'17_20_data.sci'
exec(filename)
//Mean height of the indicator diagram(in mm)
H=(Area/l)
//Mean effecive pressure(in bar)
mep=(H)*d
//Indicated power(in kW)
ip=(mep*10^5*0.25*%pi*D^2*L*0.5*N)/60000
//Brake power(in kW)
bp=ip*nm
printf("\n\nRESULTS\n\n")
printf("\nIndicated power:%f\n",ip)
printf("\nBRake power:%f\n",bp)