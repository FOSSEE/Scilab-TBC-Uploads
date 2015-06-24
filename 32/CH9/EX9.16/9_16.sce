//pathname=get_absolute_file_path('9.16.sce')
//filename=pathname+filesep()+'9.16-data.sci'
//exec(filename)
//Temperature of working fuel at the beginning of compression(in K):
T1=27+273
//Pressure ratio:
rp=70
//Compression ratio:
rv=15
//Adiabatic index of compression:
r=1.4
//Temperature at state 2(in K):
T2=T1*(rv)^(r-1)
//Temperature at state 3(in K):
T3=T2*rp/(rv^r)
//Temperature at state 4(in K):
T4=T3+(T3-T2)/r
//Temperature at state 5(in K):
T5=T4*(T3/T4*rv)^(1-r)
//Air standard thermal efficiency:
n=1-(T5-T1)/(r*(T4-T3)+(T3-T2))
printf("\nRESULT")
printf("\nAir standard thermal efficiency = %f percent",n*100)