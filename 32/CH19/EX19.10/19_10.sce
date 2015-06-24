//pathname=get_absolute_file_path('19.10.sce')
//filename=pathname+filesep()+'19.10-data.sci'
//exec(filename)
//Speed of air craft(in m/s):
Ca=250
//Mass flow rate(in kg/s):
m=55
//Air fuel ratio:
r=85
//Combustion efficiency:
nc=0.96
//Lower calorific value(in kJ/kg):
CV=43000
//Isentropic enthalpy change(in kJ/kg):
dh=220
//Velocity coefficient:
n=0.95
//Jet velocity(in m/s):
Ce=n*sqrt(2*dh*10^3)
Ce=615.67
//Specific thrust per kg of air(in N/kg air):
St=400.67
//Fuel flow rate(in kg/hr):
r1=1/r*3600*m
//Specific fuel consumption(in kg/N.hr):
sfc=r1/(St*m)
//Thrust power(in kW):
P=m*(Ce-Ca)*Ca/10^3
//Propulsive power(in kW):
Pp=m*(Ce^2-Ca^2)/2/10^3
//Propulsive efficiency:
np=P/Pp*100
//Overall efficiency:
no=P/(m/r*CV*nc)*100
printf("\n RESULT \n")
printf("\nPropulsive power = %f kW",Pp)
printf("\nPropulsive efficiency = %f percent",np)
printf("\nOverall efficiency = %f percent",no)