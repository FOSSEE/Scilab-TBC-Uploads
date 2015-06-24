//pathname=get_absolute_file_path('9.12.sce')
//filename=pathname+filesep()+'9.12-data.sci'
//exec(filename)
//Pressure of air at each state(in bar):
p1=1
p2=4
p3=4
p4=8
p6=p4
p7=4
p8=4
p9=1
//Temperature at each state(in K):
T1=300
T3=290
T6=1300
T8=1300
//Effectiveness:
E=0.80
//Heating value of fuel(in kJ/kg):
c=42000
//Adiabatic index of combustion:
r=1.4
//Value of Cp(in kJ/kg):
cp=1.0032
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((r-1)/r)
//Temperature at state 4(in K):
T4=T3*(p4/p3)^((r-1)/r)
//Temperature at state 7(in K):
T7=T6*(p7/p6)^((r-1)/r)
//Temperature at state 9(in K):
T9=T8*(p9/p8)^((r-1)/r)
//Temperature at state 5(in K):
T5=(T9-T4)*E+T4
//Compressor work per kg of air(in kJ/kg):
Wc=Cp*(T2-T1+T4-T3)
//Turbine work per kg of air(in kJ/kg):
Wt=Cp*(T6-T7+T8-T9)
//Heat added per kg air(in kJ/kg):
qa=Cp*(T6-T5+T8-T7)
//Total fuel per kg of air:
mf=qa/c
//Net work(in kJ/kg):
Wnet=Wt-Wc
//Cycle thermal efficiency:
n=Wnet/qa*100
//Fuel per kg air in combustion chamber 1:
afr1=Cp*(T6-T5)/c
//Fuel per kg air in combustion chamber 2:
afr2=Cp*(T8-T7)/c
printf("\nRESULT")
printf("\nA/F ratio in the two combustion chambers= %f, %f",afr1,afr2)
printf("\nTotal turbine work = %f kJ/kg",Wt)
printf("\nCycle thermal efficiency = %f percent",n)