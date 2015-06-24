//pathname=get_absolute_file_path('7.23.sce')
//filename=pathname+filesep()+'7.23-data.sci'
//exec(filename)
//Mass of water(in kg):
m=75
//Temperature of hot water(in K):
T1=400+273
//Final temperature(in K):
T2=300
//Temperature of the environment(in K):
T0=27+273
//Specific heat of water(in kJ/kg.K):
Cp=4.18
//Maximum work(in kJ):
Wmax=m*Cp*(T1-T2-T0*log(T1/T2))
printf("\nRESULT")
printf("\nMaximum work = %f kJ",Wmax)