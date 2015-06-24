//pathname=get_absolute_file_path('5.03.sce')
//filename=pathname+filesep()+'5.03-data.sci'
//exec(filename)
//Initial pressure(in kPa):
p1=125
//Final pressure(in kPa):
p2=375
//Intial temperature(in K):
T1=27+273
//Gas constant for oxygen(in kJ/kg.K):
R=8.314/32
//Change in entropy(in kJ/kg.K):
dS=-R*log(p2/p1)
printf("\nRESULT\n")
printf("\nChange in entropy = %f kJ/kg.K",dS)