//pathname=get_absolute_file_path('4.10.sce')
//filename=pathname+filesep()+'4.10-data.sci'
//exec(filename)
//Temperature at which heat is receieved (in K):
T1=800
//Temperature maintained by the carnot engine(in K):
T2=280
//Temperature at which heat is rejected(in K):
T=2*T1*T2/(T1+T2)
//Efficiency:
n=(T1-T)/T1
//COP of refrigerator:
COP=T2/(T-T2)
printf("\nRESULTS\n")
printf("\nEfficiency = %f",n)
printf("\nC.O.P of refrigerator = %f",COP)