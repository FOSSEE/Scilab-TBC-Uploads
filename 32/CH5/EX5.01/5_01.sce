//pathname=get_absolute_file_path('5.01.sce')
//filename=pathname+filesep()+'5.01-data.sci'
//exec(filename)
//Initial pressure(in bar):
p1=5
//Initial temperature(in K):
T1=300
//Final pressure(in bar):
p2=2
//Cp for air(in kJ/kg.K):
Cp=1.004
//Gas constant for air(in kJ/kg.K):
R=0.287
//As it is a throttling process:
T2=T1
//Change in entropy(in kJ/kg.K):
dS=Cp*log(T2/T1)-R*log(p2/p1)
printf("\nRESULT\n")
printf("\nChange in entropy = %f kJ/kg.K",dS)