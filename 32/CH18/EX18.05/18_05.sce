//pathname=get_absolute_file_path('18.05.sce')
//filename=pathname+filesep()+'18.05-data.sci'
//exec(filename)
//Operating temperatures(in K)
T1=7+273
T3=27+273
//Pressures(in bar):
p1=1
p2=5
//Adiabatic index of compression:
r=1.4
//Specific heat(in kJ/kg):
Cp=1.005
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((r-1)/r)
//Temperature at state 4(in K):
T4=T3/((p2/p1)^((r-1)/r))
//Heat rejected in process 2-3(in kJ/kg):
Q23=Cp*(T2-T3)
//Heat picked during process 4-1(in kJ/kg):
Q41=Cp*(T1-T4)
//Net work(in kJ/kg):
W=Q23-Q41
//COP:
COP=Q41/W
printf("\n RESULT \n")
printf("\nCOP = %f",COP)