pathname=get_absolute_file_path('17_17.sce')
filename=pathname+filesep()+'17_17_data.sci'
exec(filename)
//Swept volume(in cc/cylinder)
Vs=0.25*%pi*D^2*L*10^6
//Compression ratio
r=(Vs+Vc)/Vc
//Air standard efficiency
nas=1-(1/r^(y-1))
//Brake thermal effciency
nbth=nrel*nas
//Brake power(in kW)
bp=(2*%pi*N*T)/60000
//Heat supplied(in kJ/s)
H=bp/nbth
//Fuel consumption(in kg/h)
mf=H*3600/CV
//Brake mean effective pressure(in bar)
pbm=(bp*60000)/(Vs*10^-6*0.5*N*K)*10^-5
printf("\n\nRESULTS\n\n")
printf("\nBrake mean effective pressure:%f\n",pbm)
printf("\nFuel consumption:%f\n",mf)