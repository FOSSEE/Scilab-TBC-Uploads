//pathname=get_absolute_file_path('5.09.sce')
//filename=pathname+filesep()+'5.09-data.sci'
//exec(filename)
//Temperature of the system(in K):
T1=500
//Temperature of the reservoir(in K):
T2=300
//Heat capacity of the system(in J/K):
//C=0.05*T^2+0.10*T+0.085
//Maximum heat(in J):
Q1=-(0.05*(T2^3-T1^3)/3+0.10*(T2^2-T1^2)/2+0.085*(T2-T1))
//Entropy change of the system(in J/K):
dSs=0.05*(T2^2-T1^2)/2+0.10*(T2-T1)+0.085*log(T2/T1)
//Maximum work available(in kJ):
W=(Q1/T2+dSs)*T2
printf("\nRESULT\n")
printf("\nMaximum work = %f kJ",W/(10^3))