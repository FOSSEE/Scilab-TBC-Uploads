//pathname=get_absolute_file_path('19.06.sce')
//filename=pathname+filesep()+'19.06-data.sci'
//exec(filename)
//Calorific value(in kJ/kg):
CV=45000
//Inlet temperature(in C):
T1=1000
T4=T1
//Nozzle efficiency:
nn=0.9
//Diffuser efficiency:
nd=0.9
//Compressive efficiency:
nc=0.8
//Turbine efficiency:
nt=0.8
//Specific heat(in kJ/kg.K):
Cp=1.005
p3=7.248 //bar
p4=p3-0.15
r=1.4
p6=0.7
//Gas constant(in kJ/kg.K):
R=0.287
//Temperature at state 2(in K):
T2a=282.11
T3a=568.635
//Air fuel ratio:
r1=(CV-T1*Cp)/(Cp*T1-Cp*T3a)
//Temperature at state 5'(in K):
T5a=T4-(T3a-T2a)
//Temperature at state 5(in K):
T5=T4-(T4-T5a)/nt
p5=p4*(T5/T4)^(r/(r-1))
//Temperature at state 6(in K):
T6=T5a*(p6/p5)^((r-1)/r)
//Temperature at state 6'(in K):
T6a=T5a-(T5a-T6)*nn
//Velocity at exit of nozzle(in m/s):
C6=sqrt(2*Cp*(T5a-T6a)*10^3)
//Volume flow rate of air(in m^3/s):
v=200/10
//Mass flow rate(in kg/s):
m=0.7*10^2*v/(R*260)
//Specific thrust(in N/kg of air/s):
St=(1+1/r1)*C6
printf("\n RESULT \n")
printf("\nSpecific thrust = %f N/kg of air/s",St)
//Total thrust(in N):
Tt=m*St
printf("\nTotal thrust = %f N",Tt)