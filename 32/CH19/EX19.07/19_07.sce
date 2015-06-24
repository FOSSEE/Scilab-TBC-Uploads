//pathname=get_absolute_file_path('19.07.sce')
//filename=pathname+filesep()+'19.07-data.sci'
//exec(filename)
//Specific heat(in kJ/kg.K):
Cpa=1.005
Cpg=1.087
ra=1.4
rg=1.33
//Gas constant(in kJ/kg.K):
R=0.287
//Speed of aeroplane(in m/s):
C0=250
//Velocity at exit of turbine(in m/s):
C4a=180
CV=43000 //kJ/kg
//Thrust power(in kW):
P=800
//Temperatures(in K):
T0=-20+273
T2=474.25 
T3=973
//Pressures(in bar):
p0=0.3
p1=0.31
p5=p0
//Compressor efficiency:
nc=0.85
//Jet engine efficiency:
nj=0.90
//Pressure ratio:
r1=6
//Temperature at state 2(in K):
T1=T0+C0^2/(2*Cpa*10^3)
T2a=T1+(T2-T1)/nc
//Pressure at state 2(in bar):
p2=p1*r1
p3=p2
//Fuel air ratio:
FA=(Cpa*T3-Cpg*T2a)/(CV-Cpa*T3)
printf("\n RESULT \n")
printf("\nAir-fuel ratio = %f:1",1/FA)
//Temperature at state 4'(in K):
T4a=T3-Cpa/Cpg*(T2a-T1)/(1+FA)
//Temperature at state 4(in K):
T4=T3-(T3-T4a)/nc
//Pressure at state 4(in bar):
p4=p3*(T4/T3)^(rg/(rg-1))
//Temperature at state 5(in K):
T5=T4a*(p5/p4)^((rg-1)/rg)
//Nozzle exit velocity(in m/s):
C5=sqrt(2*nj*(Cpg*10^3*(T4a-T5)+C4a^2/2))
//Overall efficiency:
no=(((1+FA)*C5-C0)*C0)/(FA*CV*10^3)*100
//Rate of air consumption(in kg/s):
ma=P*10^3/(((1+FA)*C5-C0)*C0)
printf("\nRate of air consumption = %f kg/s",ma)
//Power produced by the turbine(in kW):
Pt=ma*(1+FA)*Cpg*(T3-T4a)
printf("\nPower produced by turbine = %f kW",Pt)
//Temperature at state 5'(in K):
T5a=T4a-((C5^2-C4a^2)/(2*Cpg*10^3))
//Density of exhaust gases(in m^3/kg):
d5a=p5*10^2/(R*T5a)
//Jet exit area(in m^2):
Aj=ma*(1+FA)/(C5*d5a)
printf("\nJet exit area = %f m^2",Aj)