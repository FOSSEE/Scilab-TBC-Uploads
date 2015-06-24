//pathname=get_absolute_file_path('19.04.sce')
//filename=pathname+filesep()+'19.04-data.sci'
//exec(filename)
//Velociy of turbojet plane(in m/s):
Ca=277.78
//Thrust to velocity ratio:
r1=0.5
//Rate at which air enters(in kg/s):
m=50
//Air fuel ratio:
r=52
//Lower calorific value of fuel:
LCV=43100
//Jet velocity(in m/s):
Ce=Ca/r1
printf("\n RESULT \n")
printf("\nJet velocity = %f m/s",Ce)
//Thrust(in N):
T=(m+m/r)*Ce-m*Ca
printf("\nThrust = %f kN",T/10^3)
//Specific thrust(in N/kg/s):
St=T/m
printf("\nSpecific thrust = %f N/kg/s",St)
//Thrust power(in kW):
P=T*Ca/10^3
printf("\nThrust power = %f kW",P)
//Propulsive efficiency:
np=2/(1+1/r1)*100
printf("\nPropulsive efficiency = %f percent",np)
//Thermal efficiency:
nt=((1+1/r)*Ce^2-Ca^2)/(2*1/r*LCV)/10
printf("\nThermal efficiency = %f percent",nt)
//Overall efficiency:
no=np*nt/100
printf("\nOverall efficiency = %f percent",no)
//Specific fuel consumption(in kg/h.N):
sfc=m/r*3600/(T)
printf("\nSpecific fuel consumption = %f kg/h.N",sfc)