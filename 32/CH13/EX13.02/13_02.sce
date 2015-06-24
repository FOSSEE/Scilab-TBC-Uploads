//pathname=get_absolute_file_path('13.02.sce')
//filename=pathname+filesep()+'13.02-data.sci'
//exec(filename)
//Steam entering at pressure(in bar):
p1=10
//Pressure at which steam leaves(in bar):
p2=6
//Cross-section area of exit of nozzle(in cm^2):
A2=20
//From steam tables:
h1=3478.5 //kJ/kg
s1=7.7622 //kJ/kg.K
s2=s1
T2=418.45 //C(by interpolation)
h2=3309.51 //kJ/kg
v2=0.5281 //m^3/kg
//Velocity at exit(in m/s):
C2=sqrt(2*(h1-h2)*10^3)
//Mass flow rate(in kg/s):
m=A2*10^(-4)*C2/v2
printf("\nRESULT\n")
printf("\nMass flow rate= %f kg/s",m)