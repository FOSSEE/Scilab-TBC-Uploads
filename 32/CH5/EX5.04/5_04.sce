//pathname=get_absolute_file_path('5.04.sce')
//filename=pathname+filesep()+'5.04-data.sci'
//exec(filename)
//Mass of the block(in kg):
m=1
//Temperature of the block(in K):
T1=150+273.15
//Temperature of the sea(in K):
T2=25+273.15
//Heat capacity of copper(in kJ/kg.K):
C=0.393
//Change in entropy of block(in kJ/K):
dSb=m*C*log(T2/T1)
//Heat lost by the block will be equal to heat gained by the water
//Heat lost by water(in kJ):
Q=m*C*(T1-T2)
//Change in entropy of water(in kJ/K):
dSw=Q/T2
//Entropy change of universe(in kJ/K):
dSu=dSb+dSw
printf("\nRESULT\n")
printf("\nChange in entropy of universe = %f J/K",dSu*10^3)