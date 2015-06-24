pathname=get_absolute_file_path('17_27.sce')
filename=pathname+filesep()+'17_27_data.sci'
exec(filename)
//Assuming 760mm of Hg=1bar,Gas pressure(in bar)
Pf=1+(100/13.6)*(1/76)
//Volume of coal gas at NTP(in m^3/min)
Vcg=v*(Pf/Pa)*(Ta/T)
//Volume of gas used per explosion=Extra air missed per cycle(in m^3)
Vcge=Vcg/F
//Volume of air taken at NTP
Va=(m*R*Ta)/(Pa*10^5) 
//Volume together with missed cycles(in m^3)
V=(Va-Nm*Vcge)/Ntot
//Total volume of charge at NTP(in m^3)
Vtot=V+Vcge
//Displacement volume(in m^3)
Vs=0.25*%pi*D^2*L
//Volumetric efficiency
nv=Vtot/Vs*100
printf("\n\nRESULTS\n\n")
printf("\nTotal volume of charge at NTP:%f\n",Vtot)
printf("\nVolumetric efficiency:%f\n",nv)
