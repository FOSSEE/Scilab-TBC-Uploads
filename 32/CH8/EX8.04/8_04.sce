//pathname=get_absolute_file_path('8.04.sce')
//filename=pathname+filesep()+'8.04-data.sci'
//exec(filename)
//Pressure of the steam entering(in MPa):
p1=20
//Temperature(in K):
T1=500+273
//Dryness fraction of the steam leaving:
x=0.90
//Condensor pressure(in MPa):
p6=0.005
//From steam tables:
h2=3238.2 //kJ/kg
s2=6.1401 //kJ/kg.K
s3=s2
hf=137.82 //kJ/kg
hfg=2423.7 //kJ/kg.K
sf=0.4764 //kJ/kg.K
sfg=7.9187 //kJ/kg.K
h6=137.82 //kJ/kg
h4=3474.1 //kJ/kg
sf1=2.2842 //kJ/kg.K
sfg1=4.1850 //kJ/kg.K
hf1=830.3 //kJ/kg
hfg1=1959.7 //kJ/kg
v6=0.001005 //m^3/kg
//Enthalpy at state 5(in kJ/kg):
h5=hf+x*hfg
s5=sf+x*sfg
//By interpolation, pressure at state 4(in bar):
p4=1.4
//Dryness fraction at state 3:
x3=(s3-sf1)/sfg1
//Enthalpy at state 3(in kJ/kg):
h3=hf1+x3*hfg1
//Enthalpy at state 1(in kJ/kg):
h1=h6+v6*(p1-p6)*10^3
//Net work per kg of steam(in kJ/kg):
Wnet=(h2-h3)+(h4-h5)-(h1-h6)
//Heat added per kg of steam(in kJ/kg):
Q=h2-h1
//Thermal efficiency:
n=Wnet/Q*100
printf("\n RESULT \n")
printf("\nPressure of steam leaving HP turbine = %f MPa",p4)
printf("\nThermal efficiency = %f percent",n)