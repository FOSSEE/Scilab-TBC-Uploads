//pathname=get_absolute_file_path('5.12.sce')
//filename=pathname+filesep()+'5.12-data.sci'
//exec(filename)
//Mass of air(in kg):
m=0.5
//Initial pressure(in Pa):
p1=1.013*10^5
//Final pressure(in Pa):
p2=0.8*10^6
//Initial temperature(in K):
T1=800
//Index of compression:
n=1.2
//Adiabatic index of compression:
r=1.4
//Value of Cv(in kJ/kg.K):
Cv=0.71
//Final temperature(in K):
T2=T1*((p2/p1)^((n-1)/n))
//Total entropy change(in J/K):
dS=m*Cv*((n-r)/(n-1))*log(T2/T1)
printf("\nRESULT\n")
printf("\nEntropy change = %f J/K",dS)