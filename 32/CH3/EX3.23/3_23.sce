//pathname=get_absolute_file_path('3.23.sce')
//filename=pathname+filesep()+'3.23-data.sci'
//exec(filename)
//Volume of air bottle(in m^3):
v1=0.15
//Initial pressure(in bar):
p1=40
//Initial temperature(in K):
T1=27+273
//Final presure(in bar):
p2=2
//Final volume(in m^3):
v2=v1
//Gas constant for air(in kJ/kg):
Ra=0.287
//Specific heat at const pressure(in kJ/kg):
Cp=1.005
//Specific heat at const volume(in kJ/kg):
Cv=0.718
//Compression ratio:
r=1.4
//Initial mass of air in bottle(in kg):
m1=p1*10^2*v1/(Ra*T1)
//Final temperature(in K):
T2=T1*(p2/p1)^((r-1)/r)
//Final mass of air in bottle(in kg):
m2=p2*10^2*v2/(Ra*T2)
//Energy available for running of turbine due to emptying of bottle(in kJ):
E=m1*Cv*T1-m2*Cv*T2-(m1-m2)*Cp*T2
printf("\nRESULT\n")
printf("\nWorj available from turbine = %f",E)