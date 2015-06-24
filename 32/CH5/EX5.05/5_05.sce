//pathname=get_absolute_file_path('5.05.sce')
//filename=pathname+filesep()+'5.05-data.sci'
//exec(filename)
//Mass of the block(in kg):
m=1
//Temperature of the block(in K):
T=27+273
//Height(in m):
h=200
//Heat capacity for copper(in kJ/kg.K):
s=0.393
//Acceleration due to gravity(in m/s^2):
g=9.81 
//Change in potential energy(in J):
PE=m*g*h
//In this case:
Q=PE
//Change in entropy of universe(in J/kg.K):
dSu=Q/T
printf("\nRESULT\n")
printf("\nChange in entropy of universe = %f J/kg.K",dSu)