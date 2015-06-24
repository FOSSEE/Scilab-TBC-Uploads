//pathname=get_absolute_file_path('4.08.sce')
//filename=pathname+filesep()+'4.08-data.sci'
//exec(filename)
//Maximum temperature(in K):
T1=27+273
//Minimum temperature(in K):
T2=-8+273
//Leakage(in kJ/s):
Q=7.5/60
//Power required(in kW):
W=(T1-T2)*Q/T2
printf("\nRESULTS\n")
printf("\nPower required = %f kW",W)