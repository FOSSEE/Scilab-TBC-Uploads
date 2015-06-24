//pathname=get_absolute_file_path('18.01.sce')
//filename=pathname+filesep()+'18.01-data.sci'
//exec(filename)
//Heat extracted by carnot cycle(in kJ/min):
Q1=500
//Temperature of refrigerated space(in K):
T1=-16+273
//Atmospheric temperature(in K):
T2=27+273
//Heat rejected(in kJ/min):
Q2=Q1*(T2/T1)
//Work input required(in kJ/min):
W=Q2-Q1
printf("\n RESULT \n")
printf("\nWork input = %f kJ/min",W)