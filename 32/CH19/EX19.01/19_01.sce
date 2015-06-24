//pathname=get_absolute_file_path('19.01.sce')
//filename=pathname+filesep()+'19.01-data.sci'
//exec(filename)
//Specific heat of gases(in kJ/kg.K):
Cpg=1.13 //kJ/kg.K
Cpa=1.005 //kJ/kg.K
rg=1.33
ra=1.4
C=41.84*10^3 //kJ/kg of fuel
//Temperatures(in K):
T1=272
T3=1000
//Compression efficiency:
nc=0.84
p3=3
p2=3
p1=0.5
p5=0.4
//Turbine efficiency:
nt=0.82
//Nozzle efficiency:
nn=0.92
//Speed(in m/s):
Ca=200
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((ra-1)/ra)
//Temperature at state 2'(in K):
T2a=T1+(T2-T1)/nc
//Compressive work(in kW):
Wc=Cpa*(T2a-T1)
printf("\n RESULT \n")
printf("\nPower required for compressor = %f kW/kg",Wc)
//Air fuel ratio:
r=(C-Cpg*T3)/(Cpg*T3-Cpa*T2a)
printf("\nAir fuel ratio = %f",r)
//Temperature at state 4'(in K):
T4a=T3-Cpa/Cpg*(T2a-T1)/(1+r)
T4a=810.46
T4=T3-(T3-T4a)/nt
//Pressure of gas leaving turbine(in bar):
p4=p3*(T4/T3)^(rg/(rg-1))
printf("\nPressure of gas leaving turbine = %f bar",p4)
//Temperature at state 5(in K):
T5=T4a*(p5/p4)^((rg-1)/rg)
//Temperature at state 5'(in K):
T5a=T4a-nn*(T4a-T5)
//Exit jet velocity(in m/s):
C5a=sqrt(2*Cpg*(T4a-T5a)*10^3)
Ce=C5a
//Thrust per kg of air per second:
T=(1+1/r)*Ce-Ca
printf("\nThrust = %f N/kg/s",T)