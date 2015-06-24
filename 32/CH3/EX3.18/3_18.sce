//pathname=get_absolute_file_path('3.18.sce')
//filename=pathname+filesep()+'3.18-data.sci'
//exec(filename)
//Volume of the cylinder(in m^3):
v1=2
//Pressure in the cylinder(in Pa):
p1=0.5*10^6
//Temperature of the cylinder(in K):
T1=375
//Specific heat at const pressure(in kJ/kg.K):
Cp=1.003
//Specific heat at const volume(in kJ/kg.K):
Cv=0.716
//Gas constant for air(in kJ/kg.K):
Ra=0.287
//Atmospheric pressure(in Pa):
patm=1.013*10^5
//Compression ratio:
r=1.4
//Initial mass of air(in kg):
m1=p1*v1/(Ra*T1)
//Final temperature(in K):
T2=T1*(patm/p1)^((r-1)/r)
//Final mass of air left in tank(in kg):
m2=patm*v1/(Ra*T2)
//Kinetic energy available(in kJ):
KE=m1*Cv*T1-m2*Cv*T2-(m1-m2)*Cp*T2
printf("\nRESULT\n")
printf("\nAmount of work available = %f J",KE)