//pathname=get_absolute_file_path('8.08.sce')
//filename=pathname+filesep()+'8.08-data.sci'
//exec(filename)
//Pressure of steam fed in HP turbine(in bar):
p1=60
//Temperature of the steam(in K):
T1=450+273
//Pressure of steam entering LP turbine(in bar):
p3=3
//Pressure of steam leaving the LP turbine(in bar):
p4=0.05
//Condensate temperature(in C):
T3=115
//Alternator output(in MW):
W=30
//Boiler efficiency:
nb=0.90
//Alternator efficiency:
na=0.98
//From steam tables:
h2=3301.8 //kJ/kg
s2=6.7198 //kJ/kg.K
hf=137.82 //kJ/kg
hfg=2423.7 //kJ/kg
h5=hf
vf=0.001005 //m^3/kg
v5=vf
h8=561.47 //kJ/kg
s3=s2
s4=s2
sf3=1.6718 //kJ/kg.K
sfg3=5.3201 //kJ/kg.K
hf3=561.47 //kJ/kg
hfg3=2163.8 //kJ/kg
sf=0.4764 //kJ/kg.K
sfg=7.9187 //kJ/kg.K
h9=h8
v6=v5
//Dryness fraction at state 3:
x3=(s3-sf3)/sfg3
//Dryness fraction at state 4:
x4=(s4-sf)/sfg
//Enthalpy at state 3(in kJ/kg):
h3=hf3+x3*hfg3
//Enthalpy at state 4(in kJ/kg):
h4=hf+x4*hfg
//Enthalpy at state 1(in kJ/kg):
h1=4.18*T3
//Pumping work(in kJ/kg):
Wp=v5*(p1-p4)
//Mass of steam entering the feed pump(in kg):
m=0.144
printf("\n RESULT \n")
printf("\nSteam bled for feed heating = %f kg",m)
//Net output(in kJ/kg):
Wnet=(h2-h3)+(1-m)*(h3-h4)-(1-m)*Wp
//Mass of steam required to be generated(in kg/hr):
ms=W*10^3/(na*Wnet)
printf("\nCapacity of boiler = %f kg/hr",ms)
//Heat added(in kJ/kg):
Q=(h2-h1)/nb
//Overall thermal efficiency:
no=Wnet/Q*100
printf("\nOverall thermal efficiency = %f percent",no)