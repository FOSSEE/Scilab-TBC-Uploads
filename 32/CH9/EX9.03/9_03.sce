//pathname=get_absolute_file_path('9.03.sce')
//filename=pathname+filesep()+'9.03-data.sci'
//exec(filename)
//Total heat added(in kJ/kg):
Q=1700
//Maximum pressure(in kPa):
p3=5000
//Temperature at the beginning of compression(in K):
T1=100+273.15
//Pressureat beginning of compression(in kPa):
p1=103
//Value of Cp(in kJ/kg.K):
Cp=1.005
//Value of Cv(in kJ/kg.K):
Cv=0.71
//For Otto cycle:
//Adiabatic index of compression:
n=1.4
//Gas constant(in kJ/kg.K):
R=Cp-Cv
//Considernig 1 kg of air, volume at 1(in m^3):
m=1
V1=m*R*T1/p1
//By solving, volume at 2(in m^3):
V2=0.18
//Compression ratio:
r=V1/V2
//Otto cycle efficiency:
no=1-1/(r^(n-1))
//For mixed cycle:
//By calculating, volume at state 2':
V21=0.122
//Upon subtituting:
p21 = 2124.75 //kPa
T31 = 2082 //K
T21 = 884.8 //K
T41 = 2929.5 //K
V31=V21
//Volume at state 4(in m^3):
V41=V31*T41/T31
//Temperature at state 5(in K):
T5=T41*(V41/V1)^(n-1)
//Heat rejected in the process 5-1(in kJ):
Q51=Cv*(T5-T1)
//Efficiency of mixed cycle:
nm=(Q-Q51)/Q
printf("\nRESULT")
printf("\nEfficiency of Otto cycle = %f percent",no*100)
printf("\nEfficiency of mixed cycle = %f percent",nm*100)