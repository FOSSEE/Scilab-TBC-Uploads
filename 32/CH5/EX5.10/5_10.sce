//pathname=get_absolute_file_path('5.10.sce')
//filename=pathname+filesep()+'5.10-data.sci'
//exec(filename)
//Initial pressure(in kPa):
p1=3000
//Initial volume(in m^3):
v1=0.05
//Final volume(in m^3):
v2=0.3
//Value of n:
n=1.4
//Final pressure(in MPa):
p2=p1*((v1/v2)^n)
//Entropy change:
dS=0
//Change in enthalpy(in kJ):
dH=((p1*(v1^n))^(1/n))*(p1^((n-1)/n)-p2^((n-1)/n))/((n-1)/n)
printf("\nRESULT\n")
printf("\nEnthalpy change = %f kJ",dH)
printf("\nEntropy change = %d",dS)