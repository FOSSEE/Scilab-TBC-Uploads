//pathname=get_absolute_file_path('4.02.sce')
//filename=pathname+filesep()+'4.02-data.sci'
//exec(filename)
//Highest temperature(in K):
T1=400+273
//Lowest temperature(in K):
T2=15+273
//Work produced(in kJ):
w=200
//Ratio of Q1 to Q2 is same as T1 to T2
//Heat to be supplied(in kJ):
Q1=w/(1-T2/T1)
printf("\nRESULTS\n")
printf("\nHeat to be supplied = %f kJ",Q1)