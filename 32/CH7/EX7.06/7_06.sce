//pathname=get_absolute_file_path('7.06.sce')
//filename=pathname+filesep()+'7.06-data.sci'
//exec(filename)
//Temperature of IC engine(in K):
T1=800+273
//Work per kg of gas in engine(in kJ/kg):
W=1050
//Cp of gas(in kJ/kg.K):
Cp=1.1
//Temperature of the surroundings(in K):
T0=30+273
//Change in entropy of system(in kJ/kg.K):
dSsys=W/T1
//Change in entropy of surroundings(in kJ/kg.K):
dSsurr=-Cp*(T1-T0)/T0
//Loss of available energy(in kJ/kg):
L=-T0*(dSsys+dSsurr)
//Ratio of lost available exhaust energy to engine work:
r=L/W
printf("\nRESULT")
printf("\nRatio of available exhaust energy to engine work= %f/1",r) 