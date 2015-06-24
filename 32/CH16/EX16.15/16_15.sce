//pathname=get_absolute_file_path('16.15.sce')
//filename=pathname+filesep()+'16.15-data.sci'
//exec(filename)
//Pressures(in bar):
p2=2
p1=1
//Volume(in m^3):
V1=0.5
//Adiabatic index of compression:
r=1.4
//IP required(in kW):
Wr=(p2-p1)*10^2*V1
//IP when isentropic compression occurs(in kW):
Wi=r/(r-1)*p1*10^2*V1*((p2/p1)^((r-1)/r)-1)
//Isentropic efficiency:
ni=Wi/Wr*100
printf("\n RESULT \n")
printf("\nIndicated power of roots blower = %f hp",Wr/0.7457)
printf("\nIsentropic efficiency = %f percent",ni)