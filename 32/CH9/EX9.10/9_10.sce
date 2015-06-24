//pathname=get_absolute_file_path('9.10.sce')
//filename=pathname+filesep()+'9.10-data.sci'
//exec(filename)
//Initial pressure(in bar):
p1=1
//Initial temperature(in K):
T1=27+273
//Pressure at state 2(in bar):
p2=5
//Isentropic efficiency:
nc=0.85
//Temperature at state 3(in K):
T3=1000
//Pressure at state 3(in bar):
p3=p2-0.2
//Pressure at state 4(in bar):
p4=p1
//Thermal efficiency of plant:
nth=0.20
//Adiabatic index of compression:
r=1.4
//Value of Cp(in kJ/kg.K):
Cp=1.0032
//Temperature at state 2'(in K):
T21=T1*(p2/p1)^((r-1)/r)
//Temperature at state 2(in K):
T2=(T21-T1)/nc+T1
//Temperature at state 4'(in K):
T41=T3*(p4/p3)^((r-1)/r)
//Compressor work per kg(in kJ/kg): 
Wc=Cp*(T2-T1)
//Heat added(in kJ/kg):
qa=Cp*(T3-T2)
//Temperature at state 4(in K):
T4=T3-(qa*(-nth)+Wc)/Cp
//Isentropic efficiency of turbine:
nt=(T3-T4)/(T3-T41)
printf("\nRESULT")
printf("\nTurbine isentropic efficiency = %f percent",nt*100)