//pathname=get_absolute_file_path('7.17.sce')
//filename=pathname+filesep()+'7.17-data.sci'
//exec(filename)
//Initially:
//Pressure(in bar):
p1=1.5
//Temperature(in K):
T1=60+273
//Finally:
//Pressure(in bar):
p2=2.5
//Temperature of the reservoir(in K):
Tres=400+273
//Temperature of surroundings(in K):
T0=27+273
//Cp of air(in kJ/kg.K):
Cp=1.005
//Final temperature(in K):
T2=T1*p2/p1
//Heat addition to air in the tank(in kJ/kg):
Q=Cp*(T2-T1)
//Change in entropy of the system(in kJ/kg.K):
dSs=Q/T1
//Change in entropy of environment(in kJ/kg.K):
dSe=-Q/Tres
//Total change in entropy(in kJ/kg.K):
dS=dSs+dSe
//Loss of available energy(in kJ/kg):
L=T0*dS
printf("\nRESULT")
printf("\nLoss of available energy = %f kJ/kg.K",L)