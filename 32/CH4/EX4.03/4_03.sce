//pathname=get_absolute_file_path('4.03.sce')
//filename=pathname+filesep()+'4.03-data.sci'
//exec(filename)
//Upper temperature(in K):
T1=42+273
//Lower temperature(in K):
T2=4+273
//Rate at which heat is extracted(in kJ/s):
Q2=2
//Heat to be supplied(in kJ/s):
Q1=T1/T2*Q2
//Power required(in kW):
P=Q1-Q2
printf("\nRESULTS\n")
printf("\nPower required for driving the refrigerator = %f kW",P)