//pathname=get_absolute_file_path('4.06.sce')
//filename=pathname+filesep()+'4.06-data.sci'
//exec(filename)
//Inside temperature(in K):
T1=-15+273
//Atmospheric temperature(in K):
T2=35+273
//Heat to be extracted (in kW):
Q2=140.8
//Carnot COP of plant:
COP1=1/(T2/T1-1)
//Actual COP:
COP=COP1/4
//Power required(in kW):
W=Q2/COP
printf("\nRESULTS\n")
printf("\nPower required = %f kW",W)