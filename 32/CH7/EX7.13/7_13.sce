//pathname=get_absolute_file_path('7.13.sce')
//filename=pathname+filesep()+'7.13-data.sci'
//exec(filename)
//Minimum temperature(in K):
Tmin=20+273
//Maximum temperature(in K):
Tmax=500+273
//Efficiency of heat engine:
n=0.25
//Reversible engine efficiency:
nrev=1-Tmin/Tmax
//Second law efficiency:
n2=n/nrev
printf("\nRESULT")
printf("\nSecond law efficiency = %f percent",n2*100)