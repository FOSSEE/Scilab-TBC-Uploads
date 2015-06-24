pathname=get_absolute_file_path('17_15.sce')
filename=pathname+filesep()+'17_15_data.sci'
exec(filename)
//Indicated mean effective pressure(in bar)
pim=(Area/Length)*constant
//Indicated power(in kW)
ip=(pim*10^5*L*0.25*%pi*D^2*0.5*N)/60000
//Brake power(in kW)
bp=(%pi*N*(dW)*d*g)/60000
//Mechanical efficiency
nm=bp/ip*100
//Fuel consumption(in kg/h)
mf=(Vf/30)*60*10^-3*Pf
//Brake specific fuel consumption(in kg/kWh)
bsfc=mf/bp
//Indicated thermal efficiency
nith=(ip*3600)/(mf*CV)*100
printf("\n\nRESULTS\n\n")
printf("\nIndicated power:%f\n",ip)
printf("\nBrake power:%f\n",bp)
printf("\nMechanical efficiency:%f\n",nm)
printf("\nBrake specific fuel consumption:%f\n",bsfc)
printf("\nIndicated thermal efficiency:%f\n",nith)
