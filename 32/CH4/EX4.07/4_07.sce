//pathname=get_absolute_file_path('4.07.sce')
//filename=pathname+filesep()+'4.07-data.sci'
//exec(filename)
//Maximum temperature(in K):
T1=1150+273
//Minimum temperature(in K):
T2=27+273
//Efficiency:
n=1-(T2/T1)
printf("\nRESULTS\n")
printf("\nEfficiency = %f percent ",n*100)