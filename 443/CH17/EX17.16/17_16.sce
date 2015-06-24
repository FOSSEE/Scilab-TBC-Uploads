pathname=get_absolute_file_path('17_16.sce')
filename=pathname+filesep()+'17_16_data.sci'
exec(filename)
//Swept Volume(in cc)
Vs=0.25*%pi*D^2*L
//Volume of gas in the cylinder(in cc/cycle)
V1=(1/(1+AF))*(Vs+(Vs/(r-1)))
//Volume of gas at NTP conditions(in cc)
V=V1*(p2/p)*(T/T2)
//Heat added(in kJ/cycle)
H=V*10^-6*CV
//Indicated power(in kW)
ip=(pim*10^5*Vs*10^-6*0.5*N)/60000
//Indicated thermal efficiency
nith=(ip*120)/(H*N)
//Air standard efficiency
nas=1-(1/r^(y-1))
//Reslative efficiency
nrel=nith/nas*100
printf("\n\nRESULTS\n\n")
printf("\nIndicated power:%f\n",ip)
printf("\nIndicated thermal efficiency:%f\n",nith*100)
printf("\nRelative efficiency:%f\n",nrel)