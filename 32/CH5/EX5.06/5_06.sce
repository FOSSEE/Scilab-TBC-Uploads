//pathname=get_absolute_file_path('5.06.sce')
//filename=pathname+filesep()+'5.06-data.sci'
//exec(filename)
//Block 1:
//Mass(in kg):
m1=1
//Temperature(in K):
T1=150+273
//Specific heat(in kJ/kg.K):
C1=0.393
//Block 2:
//Mass(in kg):
m2=0.5
//Temperature(in K):
T2=0+273
//Specific heat(in kJ/kg.K):
C2=0.381
//Final temperature(in K):
Tf=(m1*C1*T1+m2*C2*T2)/(m1*C1+m2*C2)
//Entropy change in block 1(in kJ/K):
dS1=m1*C1*log(Tf/T1)
//Entropy change in block 2(in kJ/K):
dS2=m2*C2*log(Tf/T2)
//Total entropy change(in kJ/K):
dS=dS1+dS2
printf("\nRESULT\n")
printf("\nChange in entropy of universe = %f J/K",dS)