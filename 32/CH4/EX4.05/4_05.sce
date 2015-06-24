//pathname=get_absolute_file_path('4.05.sce')
//filename=pathname+filesep()+'4.05-data.sci'
//exec(filename)
//Temperature inside the house(in K):
T1=25+273.15
//Temperature outside the house(in K):
T2=-1+273.15
//Heating load(in MJ/h):
Q1=125
//COP:
COP=1/(1-T2/T1)
//Minimum power required(in MJ/h):
W=Q1/COP
printf("\nRESULTS\n")
printf("\nMinimum power required = %f kW",W/(3600/10^3))