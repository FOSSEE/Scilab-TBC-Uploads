//pathname=get_absolute_file_path('5.11.sce')
//filename=pathname+filesep()+'5.11-data.sci'
//exec(filename)
//Mass of air(in kg):
m=2
//Initial volume(in m^3):
v1=1
//Final volume(in m^3):
v2=10
//Gas const(in J/kg.K):
R=287
//Change in entropy of air(in J/K):
dSa=m*R*log(v2/v1)
//During free expansion, entropy change of surroundings(in J/K):
dSs=0
//Entropy change of universe(in J/K):
dSu=dSa+dSs
printf("\nRESULT\n")
printf("\nEntropy change of air = %f J/K",dSa)
printf("\nEntropy change of surroundings = %d J/K",dSs)
printf("\nEntropy change of universe = %f J/K",dSu)