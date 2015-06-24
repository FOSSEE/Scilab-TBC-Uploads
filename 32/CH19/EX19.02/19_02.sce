//pathname=get_absolute_file_path('19.02.sce')
//filename=pathname+filesep()+'19.02-data.sci'
//exec(filename)
T1=285 //K
p1=1 //bar
T3=773 //K
p2=4 //bar
r=1.4
Cpa=1.005 //kJ/kg.K
CV=43100 //kJ/kg.K
T3=273+500 //K
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((r-1)/r)
//Temperature at state 2'(in K):
T2a=T1+1.1*(T2-T1)
//Work required in compressor(in kJ/kg of air):
Wc=Cpa*(T2a-T1)
printf("\n RESULT \n")
printf("\nPower required to drive compressor = %f kW/kg of air",Wc)
//Heat added in combustion chamber(in kJ/kg of air):
qa=Cpa*(T3-T2a)
//Air fuel ratio:
r1=CV/qa
printf("\nAir-fuel ratio = %f",r1)
//Temperature at state 5(in K):
T5=T3*(p1/p2)^((r-1)/r)
//Enthalpy drop in the nozzle(in kJ/kg of air):
hd=Cpa*(T3-T5-T2a+T1)
//Velocity of exit gas from nozzle(in m/s):
Ce=sqrt(2*hd*10^3)
//Thrust(in N/kg/s):
T=(1+1/r)*Ce
printf("\nThrust = %f N/kg of air/s",Ce)