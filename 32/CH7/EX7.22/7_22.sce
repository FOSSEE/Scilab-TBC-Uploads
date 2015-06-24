//pathname=get_absolute_file_path('7.22.sce')
//filename=pathname+filesep()+'7.22-data.sci'
//exec(filename)
//Volume of tank(in m^3):
V=0.5
//Atmospheric pressure(in bar):
p0=1
//Atmospheric temperature(in K):
T0=25+273
//Cp of gas(in kJ/kg.K):
Cp=1.005
//Cv of gas(in kJ/kg.K):
Cv=0.718
//Initial temperature(in K):
Ti=T0
//Inside final temperature(in K):
Tf=Cp/Cv*Ti
//Change in entropy(in kJ/kg.K):
dSgen=Cp*log(Tf/Ti)
//Irreversibility(in kJ/kg):
I=T0*dSgen
printf("\nRESULT")
printf("\nInside final temperature = %f K",Tf)
printf("\nChange in entropy = %f kJ/kg.K",dSgen)
printf("\nIrreversibility = %f kJ/kg",I)