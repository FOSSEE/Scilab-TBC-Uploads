//pathname=get_absolute_file_path('9.05.sce')
//filename=pathname+filesep()+'9.05-data.sci'
//exec(filename)
//Pressure at state 1(in bar):
p1=1
//Pressure at state 2(in bar):
p2=6.2
//Pressure at state 3(in bar):
p3=6.2
//Pressure at state 4(in bar):
p4=1
//Temperature at state 1(in K):
T1=300
//Fuel by air ratio:
r=0.017
//Compressor effeciency:
nc=0.88
//Turbine internal efficiency:
nt=0.90
//Heating value of fuel(in kJ/kg):
H=44186
//Adiabatic index of compression:
n=1.4
n1=1.33
//Value of Cp for combination(in kJ/kg.K):
Cpc=1.147
//Value of Cp for air(in kJ/kg.K):
Cpa=1.005
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((n-1)/n)
//Actual temperature after compression(in K):
T21=(T2-T1)/nc+T1
//Temperature at state 3(in K):
T3=(r*H+Cpa*T21)/((1+r)*Cpc)
//Temperature at state 4(in K):
T4=T3*(p4/p3)^((n1-1)/n1)
//Actual temperature at turbine inlet considering internal efficiency of turbine(in K):
T41=T3-nt*(T3-T4)
//Compressor work, per kg of air compressed(in kJ/kg):
Wc=Cpa*(T21-T1)
//Turbine work, per kg of air compressed(in K):
Wt=Cpc*(T3-T41)
//Net work(in kJ/kg):
Wnet=Wt-Wc
//Heat supplied(in kJ/kg):
Q=r*H
//Thermal effeciency:
nth=Wnet/Q*100
printf("\nRESULT")
printf("\nCompressor work = %f kJ/kg of air",Wc)
printf("\nTurbine work = %f kJ/kg of air",Wt)
printf("\nThermal efficiency = %f percent",nth)