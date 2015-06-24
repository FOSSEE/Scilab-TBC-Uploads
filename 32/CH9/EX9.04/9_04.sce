//pathname=get_absolute_file_path('9.04.sce')
//filename=pathname+filesep()+'9.04-data.sci'
//exec(filename)
//Maximum temperature(in K):
T3 = 1200 
//Minimum temperature(in K):
T1 = 300
//Adiabatic compression ratio:
n=1.4
//Value of Cp(in kJ/kg.K):
Cp=1.005
//Optimum pressure ratio for maximum work output:
rp=(T3/T1)^(n/(2*(n-1)))
//Temperature at state 2(in K):
T2=T1*rp^((n-1)/n)
//Temperature at state 4(in K):
T4=T3*rp^((1-n)/n)
//Heat supplied(in kJ/kg):
Q23=Cp*(T3-T2)
//Compressor work(in kJ/kg):
Wc=Cp*(T2-T1)
//Turbine work(in kJ/kg):
Wt=Cp*(T3-T4)
//Thermal efficiency:
nth=(Wt-Wc)/Q23*100
printf("\nRESULT")
printf("\nCompressor work = %f kJ/kg",Wc)
printf("\nTurbine work = %f kJ/kg",Wt)
printf("\nThermal efficiency = %f percent",nth)