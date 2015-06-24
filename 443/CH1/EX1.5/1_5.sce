pathname=get_absolute_file_path('1_5.sce')
filename=pathname+filesep()+'1_5_data.sci'
exec(filename)
//fuel consumption(in kg/s)
mf=bp/(nbth*CV)
//air consumption(in m^3/s)
A=(mf*Raf)/Da
//air flow rate per cylinder(in m^3/s)
A1=A/n
//indicated power(in kW)
Ip=bp/nm
//indicated thermal efficiency
nith=Ip/(mf*CV)
//Volumetric efficiency
nv=A1/(0.25*%pi*d^2*L*N/120)*100
//brake mean effective pressure(N/m^2)
pbm=bp/(L*0.25*%pi*d^2*L*N/120*4)*10^3
//mean piston speed(m/s)
v=(2*L*N)/60
printf("\n\nRESULTS\n\n")
printf("\nfuel consumption:%f\n",mf)
printf("\nair consumption:%f\n",A)
printf("\nair flow per cylinder:%f\n",A1)
printf("\nindicated power:%f\n",Ip)
printf("\nindicated thermal efficiency:%f\n",nith*100)
printf("\nvolumetric efficiency:%f\n",nv)
printf("\nbrake mean effective pressure:%f\n",pbm)
printf("\nmean piston speeed:%f\n",v)