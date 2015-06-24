//pathname=get_absolute_file_path('15.05.sce')
//filename=pathname+filesep()+'15.05-data.sci'
//exec(filename)
//Height in mercury column in condenser(in cm):
h=70
//Inlet temperature(in K):
T=30+273
//Leakage(in kg/kg of steam):
m=5*10^(-4)
//Density of mercury(in kg/cm^3):
d=0.0135951
//Acceleration due to gravity(in m/s^2):
g=9.81
//Gas constant(in kJ/kg.K):
R=0.287
//Specific heat of water(in kJ/kg.K):
Cpw=4.18
//Increase in temperature of cooling water(in K):
dT=15
//Dryness fraction:
x=0.90
//From steam tables:
hf=125.79 //kJ/kg
hfg=2430.5 //kJ/kg
vg=32.89 //m^3/kg
ps=4.246 //kPa
//Absolute pressure in condenser(in kPa):
pt=(77-h)*d*10^4*g
//Partial pressure of air(in kPa):
pa=5.094
//Volume of air extracted per minute(in m^3/min):
V=m*10^3*R*T/pa
//Mass of steam extracted in maixture(in kg/min):
ms=V/vg
//Mass handled by air extraction pump(in kg/min):
mt=m*10^3+ms
printf("\nRESULT\n")
printf("\nMass handled by air pump = %f kg/min",mt)
//Enthalpy of steam entering(in kJ/kg):
h=hf+x*hfg
//Water circulation rate(in kg/min):
mw=1000*(h-Cpw*T)/(Cpw*dT)
printf("\nWater circulation rate = %f kg/min",mw)