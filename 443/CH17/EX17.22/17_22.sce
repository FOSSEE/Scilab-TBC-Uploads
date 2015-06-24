pathname=get_absolute_file_path('17_22.sce')
filename=pathname+filesep()+'17_22_data.sci'
exec(filename)
//Stoichiometric air fuel ratio
AF=(C1*(32/12)+H*(8/1))/0.23
//Molecular weight of air(in kg/mol)
M=0.23*32+0.77*28
//Actual air fuel ratio
AFa=AF*(1+(Ac))
//From nitrogen balance no of moles
d=0.79*(AFa/M)
//From carbon balance
a=C1/12
//From hydrogen balance
b=H/2
//From oxygen balance
c=(0.21*(AFa/M))-a-(b/2)
//Volumetric composition of dry exhaust gases
//Volumetric comp of CO2
A=a/(a+d+c)*100
//Volumetric comp of O2
B=b/(a+d+c)*100
//Volumetric comp of N2
C=c/(a+d+c)*100
//Indicated power(in kW)
ip=bp/nm
//Heat input(in kJ/min)
H=ip*60/nith
//Fuel flow(in kg/min)
mf=H/CV
//Air flow(in kg/min)
ma=mf*AFa
//Volume of air(in m^3/min)
Van=ma*Va
//Swept volume(in m^3/min)
Vs=Van/nm
//Diameter of engine(in m)
D=((Vs*4*2)/(%pi*N*K*1.5))^(1/3)
//Stroke of the engine(in m)
L=1.5*D
printf("\n\n\RESULTS\n\n")
printf("\nVolumetric composition of dry exhaust gases\n")
printf("\nVolumetric comp of CO2:%f\n",A)
printf("\nVolumetric comp of N2:%f\n",C)
printf("\nVolumetric comp of O2:%f\n",B)
printf("\nBore of the engine:%f\n",D)
printf("\nStroke of the engine:%f\n",L)