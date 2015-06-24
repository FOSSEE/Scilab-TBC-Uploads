//pathname=get_absolute_file_path('5.08.sce')
//filename=pathname+filesep()+'5.08-data.sci'
//exec(filename)
//Maximum temperature(in K):
T1=1800
//Minimum temperature(in K):
T2=300
//Rate at which heat is added(in MW):
Q1=5
//Work output(in MW):
W=2
//Heat rejected(in MW):
Q2=Q1-W
//Entropy generated(in MW/K):
dSg=(-Q1/T1+Q2/T2)
//Work lost(in MW):
w=T2*dSg
printf("\nRESULT\n")
printf("\nWork lost = %f MW",w)