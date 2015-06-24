//pathname=get_absolute_file_path('9.09.sce')
//filename=pathname+filesep()+'9.09-data.sci'
//exec(filename)
//Temperature at which air is supplied(in K):
T1=27+273
//Initial pressure(in bar):
p2=8
p3=p2
//Temperature of air leaving the combustion chamber(in K):
T3=1100
//Pressure at state 4(in bar):
p4=1
p1=p4
//Effectiveness of heat exchanger:
E=0.8
//Polytropic efficiency of the compressor:
npc=0.85
//Polytropic efficinency of the turbnie:
npt=0.90
//Adiabatic index of compression:
r=1.4
//Value of Cp(in kJ/kg.K):
Cp=1.0032
//Compression index:
nc=r*npc/(r*npc-(r-1))
//Expansion index:
nt=r/(r-npt*(r-1))
//Temperature at state 2:
T2=T1*(p2/p1)^((nc-1)/nc)
//Temperature at state 4(in K):
T4=T3*(p4/p3)^((nt-1)/nt)
//Using heat exchanger effectiveness, temperature at state 5(in K):
T5=(T4-T2)*E+T2
//Heat added in combustion chambers(in kJ/kg):
qa=Cp*(T3-T5)
//Compressor work(in kJ/kg):
Wc=Cp*(T2-T1)
//Turbine work(in kJ/kg):
Wt=Cp*(T3-T4)
//Cycle efficiency:
ncycle=(Wt-Wc)/qa
//Work ratio:
Wr=(Wt-Wc)/Wt
//Specific work output(in kJ/kg):
swo=Wt-Wc
printf("\nRESULT")
printf("\nCycle efficiency = %f percent",ncycle*100)
printf("\nWork ratio = %f",Wr)
printf("\nSpecific work output = %f kJ/kg",swo)