pathname=get_absolute_file_path('17_12.sce')
filename=pathname+filesep()+'17_12_data.sci'
exec(filename)
//Brake power(in kW)
bp=(2*%pi*N*W*l*g)/60000
//Brake mean effective pressure(in bar)
bmep=(bp*60000)/(L*0.25*%pi*D^2*N*0.5*k)*10^-5
//Brake specific fuel consumption(in kg/kWh)
bsfc=mf/bp*60
//Brake specific air consumption(in kg/kWh)
bsac=(ma/bp)*60
//Brake thermal efficiency
nbth=(bp*60*100)/(mf*CV)
//Volume flow rate of air at intake condiion(in m^3/min)
Va=(ma*R*T)/p
//Swept volume(in m^3/min)
Vs=0.25*%pi*D^2*L*0.5*N*k
//Volumetric efficiency
nv=Va/Vs*100
//Air fuel ratio 
AF=ma/mf
printf("\n\nRESULTS\n\n")
printf("\nBrake power:%f\n",bp)
printf("\nBrake mean effective pressure:%f\n",bmep)
printf("\nBrake specific fuel consumption:%f\n",bsfc)
printf("\nBrake specific air consumption:%f\n",bsac)
printf("\nBrake thermal effciency:%f\n",nbth)
printf("\nVolumetric efficiency:%f\n",nv)
printf("\nAir Fuel ratio:%f\n",AF)