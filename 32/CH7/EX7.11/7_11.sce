//pathname=get_absolute_file_path('7.11.sce')
//filename=pathname+filesep()+'7.11-data.sci'
//exec(filename)
//Heat removed(in kJ):
Q=500
//Temperature of the heat reservoir(in K):
T1=835
//Temperature of the system(in K):
T2=720
//Temperature of surroundings(in K):
T0=280
//Availability for heat reservoir(in kJ/kg.K):
A1=T0*Q/T1
//Availability for system(in kJ/kg.K):
A2=T0*Q/T2
//Net loss of available energy(in kJ/kg.K):
Anet=A1-A2
printf("\nRESULT")
printf("\nLoss of available energy = %f kJ/kg.K",-Anet) 