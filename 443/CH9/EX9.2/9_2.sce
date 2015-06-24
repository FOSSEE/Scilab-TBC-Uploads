pathname=get_absolute_file_path('9_2.sce')
filename=pathname+filesep()+'9_2_data.sci'
exec(filename)
//Duration of injection
t=Tc/(360*N/60)
//Specific gravity 
SG=141.5/(131.5+API)
//Velocity of injection
Vinj=Cd*sqrt((2*(pinj-pcyl)*10^5)/(SG*1000))
//Vol of fuel injected per cycle
V=((bsfc/60)*P)/((N/2)*(SG*1000))
//Nozzle orifice area
Af=V/(Vinj*t)
//Orifice diameter
d=sqrt((4*Af)/%pi) 
printf("\n\nRESULTS\n\n")
printf("\norifice diameter:%f\n",d)