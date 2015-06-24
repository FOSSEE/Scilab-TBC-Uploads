//pathname=get_absolute_file_path('9.06.sce')
//filename=pathname+filesep()+'9.06-data.sci'
//exec(filename)
//Maximum temperature(in K):
T5=1200
//Minimum temperature(in K):
T1=300
T3=300
//Isentropic efficiency:
ni=0.85
//Turbine efficiency:
nt=0.9
//Adiabatic index of compression:
n=1.4
//Overall optimum pressure ratio:
rpopt=(T1/(T5*ni*nt))^(2*n/(3*(1-n)))
printf("\nRESULT")
printf("\nOverall optimum pressure ratio = %f",rpopt)