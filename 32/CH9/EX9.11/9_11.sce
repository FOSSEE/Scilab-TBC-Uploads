//pathname=get_absolute_file_path('9.11.sce')
//filename=pathname+filesep()+'9.11-data.sci'
//exec(filename)
//Pressure at which air is supplied(in bar):
p1=1
p8=p1
//Temperature at which air is supplied(in K):
T1=27+273
//Maximum temperature in the cycle(in K):
T5=1000
//Pressure at state 6(in bar):
p6=3
p7=p6
p4=10
p5=p4
p3=3
//Temperature at state 7(in K):
T7=995
//Calorific value of fuel(in kJ/kg):
c=42000
//Value of Cp(in kJ/kg):
Cp=1.0032
//Air flow in compressor(in kg/s):
m=30
//Isentropic efficiency of compression:
nc=0.85
//Isebtropic efficiency of expansion:
ne=0.90
//Adiabatic index of compression:
r=1.4
//Pressure ratio for perfect intercooling:
rp=sqrt(10)
//Temperature at state 2'(in K):
T21=T1*rp^((r-1)/r)
//Temperature at state 2(in K):
T2=(T21-T1)/nc+T1
//For perfect intercooling:
T3=T1
//Temperature at state 4'(in K):
T41=T3*(p4/p3)^((r-1)/r)
//Temperature at state 4(in K):
T4=(T41-T3)/nc+T3
//Total compressor work(in kJ/kg):
Wc=2*Cp*(T2-T1)
//Temperature at state 6'(in K):
T61=T5*(p6/p5)^((r-1)/r)
//Temperature at state 6(in K):
T6=T5-(T5-T61)*ne
//Temperature at state 8'(in K):
T81=T7*(p8/p7)^((r-1)/r)
//Temperature at state 8(in K):
T8=T7-(T7-T81)*ne
//Expansion work output per kg air(in kJ/kg):
Wt=Cp*(T5-T6+T7-T8)
//Heat added per kg air(in kJ/kg):
qa=Cp*(T5-T4+T7-T6)
//Fuel required per kg of air:
mf=qa/c
//Air-fuel ratio:
afr=1/mf
//Net output(in kW):
Wnet=(Wt-Wc)*m
//Thermal efficiency:
nth=(Wt-Wc)/qa
printf("\nRESULT")
printf("\nThermal efficiency = %f percent",nth*100)
printf("\nNet output = %f kW",Wnet)
printf("\nA/F ratio = %f",afr)