//pathname=get_absolute_file_path('8.07.sce')
//filename=pathname+filesep()+'8.07-data.sci'
//exec(filename)
//Pressure at which steam is generated(in bar):
p1=50
//Temperature of the steam(in K):
T1=500+273
//Pressure upto which steam is expanded(in bar):
p3=5
//Temperature(in K):
T3=400+273
//Final pressure(in bar):
p5=0.05
//From steam tables:
h2=3433.8 //kJ/kg
s2=6.9759 //kJ/kg.K
s3=s2
T3=183.14+273 //K(by interpolation)
h3=2818.03 //kJ/kg
h4=3271.9 //kJ/kg
s4=7.7938 //kJ/kg.K
s5=s4
sf=0.4764 //kJ/kg.K
sfg=7.9187 //kJ/kg.K
hf=137.82 //kJ/kg
hfg=2423.7//kJ/kg
h6=hf
v6=0.001005 //m^3/kg
//Dryness fraction at state 5:
x5=(s5-sf)/sfg
//Enthalpy at state 5(in kJ/kg):
h5=hf+x5*hfg
//Enthalpy at state 1(in kJ/kg):
h1=h6+v6*(p1-p5)*10^2
//Turbine work(in kJ/kg):
Wt=(h2-h3)+(h4-h5)
//Pump work(in kJ/kg):
Wp=h1-h6
//Net output per kg of steam(in kJ/kg):
Wnet=Wt-Wp
//Heat added per kg of steam(in kJ/kg):
Q=h2-h1
//Cycle efficiency:
n=Wnet/Q
//Specific steam consumption(in kg/hp.hr):
ssc=0.7457*3600/Wnet
//Work ratio:
r=Wnet/Wt
printf("\n RESULT \n")
printf("\nCycle efficiency=%f",n*100)
printf("\nSpecific steam consumption = %f kg/hp.hr",ssc)
printf("\nWork ratio = %f",r)