pathname=get_absolute_file_path('17_19.sce')
filename=pathname+filesep()+'17_19_data.sci'
exec(filename)
//Stoichiometric air fuel ratio
AF=(C*(32/12)+H*(8/1))/0.23
//From nitrogen balance
y=((C/12)*(CO2/N2))/0.79
//Molecular weight of air(in kg/mol)
M=0.23*32+0.77*28
//Actual air fuel ratio
AFa=y*M
//% of excess air
E=(AFa-AF)/AF*100
//Volume of air(in m^3)
Va=(T2/T1)*V*AFa
//Volume of fuel(in m^3)
Vf=(((T2/T1)*V)/3.4)*1
//Total volume(in m^3/kg)
Vtot=Va+Vf
//Mixture evaporated(in m^3/min)
Me=Vtot*mf/60
//Swept volume/minute
Vs=k*0.25*%pi*D^2*L*0.5*N
//Volumetric efficiency
nv=Me/Vs*100
printf("\n\nRESULTS\n\n")
printf("\nActual air fuel ratio:%f\n",AFa)
printf("\nVolumetric efficiency:%f\n",nv)