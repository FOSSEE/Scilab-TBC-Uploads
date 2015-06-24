//pathname=get_absolute_file_path('19.03.sce')
//filename=pathname+filesep()+'19.03-data.sci'
//exec(filename)
//Specific heat of gases(in kJ/kg.K):
Cpg=1.14 //kJ/kg.K
Cpa=1.005 //kJ/kg.K
//Mechanical efficiency:
nm=0.96
//Polytropic efficiency of compressor:
nc=0.87
//Turbine efficiency:
nt=0.90
//Nozzle efficiency:
nn=0.95
//By pass ratio:
B=5.5
//Mass flow rate of air(in kg/s):
ma=200
//Pressures(in bar):
p2=1.5
p1=1
p3=28
pa=p1
//Temperatures(in K):
T1=288
rg=1.33
ra=1.4
CV=43100 //kJ/kg
T4=1573 //K
//For compression:a1=((ne-1)/ne)
a1=1/nc*(ra-1)/ra
a1=0.328
//For expansion:a2=(nt-1)/nt
a2=nt*(rg-1)/rg
a2=0.223
//Temperature at state 2'(in K):
T2a=T1*(p2/p1)^a1
//Temperature at state 3'(in K):
T3a=T2a*(p3/p2)^a2
//Using nozzle efficiency:
dT=nn*T2a*(1-(pa/p2)^((ra-1)/ra))
//Velocity at exit of nozzle(in m/s):
C8=sqrt(2*Cpa*10^3*dT)
//Mass flow rate of bypass air(in kg/s):
mab=ma*B/(B+1)
//Mass flow rate of hot gases(in kg/s):
mca=ma-mab
//Thrust available due to by pass air(in kN):
Tb=mab*C8/10^3
//Air fuel ratio:
r1=(Cpg*T4-Cpa*T3a)/(CV-Cpg*T4)
//Temperature at state 5'(in K):
T5a=T4-(Cpa*(T3a-T2a)/(nm*(1+r1)*Cpg))
//Temperature at state 6'(in K):
T6a=(Cpg*nm*T5a-(1+B)*Cpa*(T2a-T1))/(Cpg*nm)
//Pressure at state 4(in bar):
p4=p3-p2
//Pressure at state 5(in bar):
p5=p4*(T5a/T4)^(1/a2)
//Pressure at state 6(in bar):
p6=p5*(T6a/T5a)^(1/a2)
//Critical pressure ratio:
c=((rg+1)/2)^(rg/(rg-1))
//Pressure at state 7(in bar):
p7=p6/c
//For exit nozzle(in K):
dT1=nn*T6a*(1-(p7/p6)^((rg-1)/rg))
//Velocity at exit of nozzle(in m/s):
C7=sqrt(2*Cpg*10^3*dT1)
//Thrust due to hot gases(in kN):
Tg=mca*C7/10^3
//Total thrust(in kN):
Tt=Tg+Tb
//Specific thrust(in kN/kg/s):
st=Tt/ma
printf("\n RESULT \n")
printf("\nSpecific thrust = %f kN/kg/s",st)
//Specific fuel consumption(in  kg/h.N):
sfc=r1*mca*3600/(Tt*10^3)
printf("\nSpecific fuel consumption = %f kg/h.N",sfc)