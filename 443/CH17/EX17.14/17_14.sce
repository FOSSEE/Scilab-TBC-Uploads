pathname=get_absolute_file_path('17_14.sce')
filename=pathname+filesep()+'17_14_data.sci'
exec(filename)
//Brake power(in kW)
bp=(2*%pi*N*T)/60000
//Brake thermal efficiency
nbth=(bp*3600)/(mf*CV)*100
//Brake mean effective pressure(in bar)
pbm=(bp*60000)/(L*0.25*%pi*D^2*N*0.5*k)*10^-5
//Volume flow rate of air at intake(in m^3/min)
Va=Cd*0.25*%pi*d^2*sqrt(2*g*dhw*(pw*R*Ta/p))*60
//Swept volume(in m^3/min)
Vs=0.25*%pi*D^2*L*0.5*N*k
//Volumetric efficiency
nv=Va/Vs*100
printf("\n\nRESULTS\n\n")
printf("\nBrake thermal effciency:%f\n",nbth)
printf("\nBrake mean effective pressure:%f\n",pbm)
printf("\nVolumetric efficiency:%f\n",nv)

