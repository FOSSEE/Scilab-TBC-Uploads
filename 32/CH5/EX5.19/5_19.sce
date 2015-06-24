//pathname=get_absolute_file_path('5.19.sce')
//filename=pathname+filesep()+'5.19-data.sci'
//exec(filename)
//Volume of the chamber(in m^3):
v1=0.04
//Initial pressure(in bar):
p1=10
//Initial temperature(in K):
T1=25+273
//Gas constant(in  kJ/kg.K):
R=0.287
//Value of Cv(in kJ/kg.K):
Cv=0.71
//Final temperature(in K):
T2=T1
//Final volume(in m^3):
v2=2*v1
//Final pressure(in bar):
p2=p1*v1/v2
//Initial mass(in kg):
m=p1*10^2*v1/(R*T1)
//Change in entropy(in kJ/K):
dS=m*R/log(v2/v1)+m*Cv*log(T2/T1)
printf("\nRESULT\n")
printf("\nEntropy change = %f kJ/K",dS)
//Entropy change is non zero but ∫dQ/T is zero, hence:
printf("\nAs dS>∫dQ/T, process is irreversible")