//pathname=get_absolute_file_path('3.19.sce')
//filename=pathname+filesep()+'3.19-data.sci'
//exec(filename)
//Pressure in the vessel(in Pa):
p1=0.5*10^6
//Volume of 1st chamber(in m^3):
v1=0.5
//Temperature in the vessel(in K):
T1=300
//Final pressure(in Pa):
p2=10^6
//Volume of 2nd chamber(in m^3):
v2=0.5
//Final temperature(in K):
T2=500
//Universal gas constant(in J/kg.K):
R=8314
//Moles in chamber 1:
n1=p1*v1/(R*T1)
//Moles in chamber 2:
n2=p2*v2/(R*T2)
//Temperature of the mixture(in K):
T3=(n1*T1+n2*T2)/(n1+n2)
//Final pressure(in MPa):
p3=(n1+n2)*R*T3/(v1+v2)
printf("\nRESULT\n")
printf("\nFinal pressure = %f MPa",p3/(10^6))
printf("\nFinal temperature = %f K",T3)