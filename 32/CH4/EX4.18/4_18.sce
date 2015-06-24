//pathname=get_absolute_file_path('4.18.sce')
//filename=pathname+filesep()+'4.18-data.sci'
//exec(filename)
//Maximum temperature(in K):
T1=800+273
//Minimum temperature(in K):
T2=50+273
//Temperature of the 3rd reservoir(in K):
T3=50+273
//Temperature of the 4th reservoir(in K):
T4=10+273
//Heat picked up by Carnot cycle(in kW):
Q3=15
//Energy required to run a machine(in kW):
E=25
//Efficiency:
n=1-T2/T1
//From the relation of COP:
Q4=Q3*T3/T4
//Work by heat pump(in kW):
Whp=Q4-Q3
//Work in the heat engine(in kW):
Whe=Whp+E
//Heat from source at 1173 K(in kW):
Q1=Whe/n
//Heat rejected to the reservoir from engine 1(in kW):
Q2=Q1-Whe
//Total heat rejected to the reservoir(in kW):
Qt=Q2+Q4
printf("\nRESULT\n")
printf("\nHeat rejected to the reservoir = %f kW",Qt)
printf("\nHeat received from the highest temperature reservoir = %f kW",Q1)